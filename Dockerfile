FROM pulimento/alpine-hugo-firebase

# Github labels
#LABEL "com.github.actions.name"="Hugo action"
#LABEL "com.github.actions.description"="Run Hugo build"
#LABEL "com.github.actions.icon"="package"
#LABEL "com.github.actions.color"="green"

# Things to do!
ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["sh", "/entrypoint.sh"]
