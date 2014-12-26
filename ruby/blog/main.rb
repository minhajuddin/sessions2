require 'sinatra'
require 'pg'

get '/' do
  @posts = get_posts
  erb(:index)
end

post '/posts/' do
  create_post(params['title'], params['content'])
  redirect to('/')
end

def create_post(title, content)
  conn = PG.connect( dbname: 'sinatrablog' )
  #conn.exec("INSERT INTO posts(title, content) values('#{title}', '#{content})'")
  conn.exec_params("INSERT INTO posts(title, content) values($1, $2)", [title, content])
end

def get_posts
  conn = PG.connect( dbname: 'sinatrablog' )
  conn.exec("SELECT * FROM posts ORDER BY id DESC").to_a
end
