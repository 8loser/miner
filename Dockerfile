FROM alpine

RUN apk update && apk upgrade \
	&& apk add --no-cache --virtual .build-deps \
	git \
	make \
	cmake \
	libstdc++ \
	gcc \
	g++ \
	automake \
	libtool \
	autoconf \
	linux-headers \
	&& apk add --no-cache tzdata \
	&& git clone https://github.com/xmrig/xmrig.git \
	&& sed -i -r 's/(DonateLevel\s?=\s?)\d+/\10/g' xmrig/src/donate.h \
	&& mkdir xmrig/build \
	&& cd xmrig/scripts && ./build_deps.sh && pwd && cd ../build \
	&& cmake .. -DXMRIG_DEPS=scripts/deps -DBUILD_STATIC=ON \
	&& make -j$(nproc) \
	&& cp xmrig /bin && cd / \
	&& rm -rf /xmrig /var/cache/apk/* \
	&& apk del .build-deps

ENV TZ=Asia/Taipei