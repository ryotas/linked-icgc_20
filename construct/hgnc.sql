PREFIX xsd: <http://www.w3.org/2001/XMLSchema#>
PREFIX icgc: <http://icgc.link/vocab/>
PREFIX bio2rdf_vocabulary: <http://bio2rdf.org/bio2rdf_vocabulary:>

CONSTRUCT {
  ?ssm icgc:gene_affected_bio2rdf ?gene_id
} WHERE {
  ?gene_id bio2rdf_vocabulary:namespace "ensembl"^^<http://www.w3.org/2001/XMLSchema#string> .
  ?gene_id bio2rdf_vocabulary:identifier ?id1 .
  ?ssm icgc:gene_affected ?id2 .
  FILTER ((?id2 != "") && (STR(?id1) = ?id2))
}
