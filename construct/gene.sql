PREFIX icgc: <http://icgc.link/vocab/>
PREFIX dcterms: <http://purl.org/dc/terms/>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
CONSTRUCT {
  ?uri_icgc dcterms:identifier ?postfix .
  ?uri_icgc rdfs:label ?postfix .
  ?uri_icgc rdfs:seeAlso ?uri_uniprot .
  ?uri_icgc rdfs:seeAlso ?uri_bio2rdf .
  ?uri_icgc rdfs:seeAlso ?uri_identifiers .
}
WHERE {
  ?s icgc:gene_affected ?uri_icgc .
  FILTER(!(?postfix=""))
  BIND (REPLACE(str(?uri_icgc), "^.*Gene/", "") AS ?postfix)
  BIND (IRI(CONCAT("http://purl.uniprot.org/ensembl/",?postfix)) as ?uri_uniprot)
  BIND (IRI(CONCAT("http://bio2rdf.org/ensembl:",?postfix)) as ?uri_bio2rdf)
  BIND (IRI(CONCAT("http://identifiers.org/ensembl/",?postfix)) as ?uri_identifiers)
}
