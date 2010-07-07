require 'rubygems'
#require 'queryengine/query2sparql'
require 'active_rdf'

#ConnectionPool.add(:type => :sparql, :engine => :virtuoso, :url => "http://quebec.bio2rdf.org/sparql")
#ConnectionPool.add(:type => :sparql, :engine => :virtuoso, :url => "http://geneid.bio2rdf.org/sparql")
#ConnectionPool.add(:type => :sparql, :engine => :virtuoso, :url => "http://kegg.bio2rdf.org/sparql")

text = "hexokinase"
#text = "maltose"

# Full-text search
#ary = Query.new.select(:s, :p, :o).where(:o, RDFS::Resource.new("bif:contains"), text).execute


#ConnectionPool.add(:type => :sparql, :engine => :virtuoso, :url => "http://geneid-test.bio2rdf.org/sparql")
ConnectionPool.add(:type => :sparql, :engine => :virtuoso, :url => "http://quebec.pdb.bio2rdf.org/sparql")

s = RDF::Resource.new("<http://bio2rdf.org/pdb:1GOF>")
sparql = Query.new.select(:p, :o).where(s, :p, :o)
p sparql.to_s


#ConnectionPool.add(:type => :sparql, :engine => :virtuoso, :url => "http://data.allie.dbcls.jp/sparql/") # Allie
#ConnectionPool.add(:type => :sparql, :engine => :virtuoso, :url => "http://beta.dbcls.jp/4store/medline/sparql/") # MEDLINE ABSTRACT
#ConnectionPool.add(:type => :sparql, :engine => :virtuoso, :url => "http://184.72.57.227/sparql/") # PDBj
#ConnectionPool.add(:type => :sparql, :engine => :virtuoso, :url => "http://184.72.57.227/sparql/") # PDBj RDF on 4store (DBCLS)
#ConnectionPool.add(:type => :sparql, :engine => :virtuoso, :url => "http://184.72.57.238:8893/sparql/") # UniProtKB
#ConnectionPool.add(:type => :sparql, :engine => :virtuoso, :url => "http://184.72.57.238:8893/sparql/") # uniprot-rdf on Virtuoso (DBCLS)
#ConnectionPool.add(:type => :sparql, :engine => :virtuoso, :url => "http://beta.dbcls.jp/4store/ddbjhum/sparql/") # DDBJ RDF (ddbjhum[1-6].seq)



results = sparql.execute

p results

p results.size

#results.each do |res|
#end

