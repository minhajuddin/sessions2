require 'pg'

# Output a table of current connections to the DB
conn = PG.connect( dbname: 'simplesite_development' )
conn.exec( "SELECT * FROM sites" ) do |result|
  result.each do |row|
    puts row.values_at('id', 'name', 'subdomain')
  end
end


