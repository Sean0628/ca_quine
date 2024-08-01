FROM ruby:3.3.4

WORKDIR /usr/src/app

COPY . .

RUN chmod +x ./main.rb

CMD ["ruby", "./main.rb"]
