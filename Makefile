blog:
	git pull && \
	bundle exec rake setup_github_pages\[git@github.com:Quon/quon.github.com\] && \
	bundle install && \
	bundle exec rake integrate && \
	bundle exec rake generate && \
	bundle exec rake deploy && \
	git add .; \
	git commit -am "${MSG}"; \
	git push origin source

.PHONY: blog%
