# Set up OSX specific configs

export PATH=/opt/homebrew/bin:$PATH

function spindb() {
    open "mysql://root@$(spin info fqdn):3306"
}

function spingraphiql() {
  open "https://app.$(spin info fqdn)/services/internal/shops/1/graphql"
}