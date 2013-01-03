blog:
  git pull && \
  rake setup_github_pages\[git@github.com:Quon/quon.github.com\] && \
  bundle install && \
  rake integrate && \
  rake generate && \
  rake deploy && \
  git add .; \
  git commit -am "${MSG}"; \
  git push origin master

go:
	rake generate && rake deploy

.PHONY: blog%