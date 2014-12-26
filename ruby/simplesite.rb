require 'sinatra'
require 'pg'

get('/') do
  return site_list()
end

def site_list()
  html = "<!doctype html><style>table, tr, td{border: solid red 2px;}</style><table>"
  conn = PG.connect(dbname: 'simplesite_developmen' )
  conn.exec( "SELECT id, subdomain  FROM sites" ) do |result|
    result.each do |row|
      html = html + "<tr><td>#{row['id']}</td><td>#{row['subdomain']}</td></tr>"
    end
  end
  html = html + "</table>"
  return html
end
