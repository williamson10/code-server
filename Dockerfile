FROM codercom/code-server:1.939


RUN apt-get update && apt-get install -y \
	ruby-full \
	build-essential \
	zlib1g-dev


# Install Jekyll
RUN gem install jekyll 
RUN gem install bundler -v '1.16.1'



WORKDIR /home/coder/project



EXPOSE 8443
EXPOSE 4000

ENTRYPOINT ["code-server"]