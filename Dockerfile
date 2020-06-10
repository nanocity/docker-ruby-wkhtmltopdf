# 1: Start from whatever image you are using - this is a ruby app example:
FROM ruby:2.5.0

# 2: Install the packages required for wkhtmltopdf to work:
RUN apk add --no-cache \
 libstdc++ \
 libx11 \
 libxrender \
 libxext \
 libssl1.0 \
 ca-certificates \
 fontconfig \
 freetype \
 ttf-dejavu \
 ttf-droid \
 ttf-freefont \
 ttf-liberation \
 ttf-ubuntu-font-family

# 3: Copy the wkhtmltopdf executable binary directly from our image:
COPY --from icalialabs/wkhtmltopdf:alpine /bin/wkhtmltopdf /bin/wkhtmltopdf
