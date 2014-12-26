require 'sinatra'


get('/') do
  return "Hello World"
end

get('/2') do
  data = File.read('./index.html')
  return data
end

get('/calculate') do
  params
  return ( params['op1'].to_i + params['op2'].to_i ).to_s
end
