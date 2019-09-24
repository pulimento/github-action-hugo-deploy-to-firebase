FROM pulimento/alpine-hugo-firebase

# Things to do!
ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["sh", "/entrypoint.sh"]
