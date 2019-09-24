FROM pulimento/alpine-hugo-firebase

# Github labels
LABEL "com.github.actions.icon"="arrow-up-circle"
LABEL "com.github.actions.color"="green"

# Things to do!
ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["sh", "/entrypoint.sh"]
