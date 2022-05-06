update DB.DBA.HTTP_PATH set HP_OPTIONS = serialize(vector('browse_sheet', '', 'noinherit', 'yes', 'cors', '*', 'cors_restricted', 0))  where HP_LPATH = '/sparql';
DB.DBA.XML_SET_NS_DECL('dbo',			'http://dbpedia.org/ontology/', 2);
DB.DBA.XML_SET_NS_DECL('dbpedia',		'http://dbpedia.org/resource/', 2);
DB.DBA.XML_SET_NS_DECL('dbp',			'http://dbpedia.org/property/', 2);
DB.DBA.XML_SET_NS_DECL('dcterms',		'http://purl.org/dc/terms/', 2);
DB.DBA.XML_SET_NS_DECL('dcterms',		'http://purl.org/dc/terms/', 2);
DB.DBA.XML_SET_NS_DECL('foaf',			'http://xmlns.com/foaf/0.1/', 2);
DB.DBA.XML_SET_NS_DECL('',				'http://linkedspending.aksw.org/ontology/', 2);
DB.DBA.XML_SET_NS_DECL('ls',			'http://linkedspending.aksw.org/instance/', 2);
DB.DBA.XML_SET_NS_DECL('lso',			'http://linkedspending.aksw.org/ontology/', 2);
DB.DBA.XML_SET_NS_DECL('os',			'http://openspending.org/', 2);
DB.DBA.XML_SET_NS_DECL('owl',			'http://www.w3.org/2002/07/owl#', 2);
DB.DBA.XML_SET_NS_DECL('qb',			'http://purl.org/linked-data/cube#', 2);
DB.DBA.XML_SET_NS_DECL('qb',			'http://purl.org/linked-data/cube#', 2);
DB.DBA.XML_SET_NS_DECL('rdf',			'http://www.w3.org/1999/02/22-rdf-syntax-ns#>', 2);
DB.DBA.XML_SET_NS_DECL('rdfs',			'http://www.w3.org/2000/01/rdf-schema#', 2);
DB.DBA.XML_SET_NS_DECL('scovo',			'http://purl.org/NET/scovo#', 2);
DB.DBA.XML_SET_NS_DECL('sdmxa',			'http://purl.org/linked-data/sdmx/2009/attribute#', 2);
DB.DBA.XML_SET_NS_DECL('sdmx-attribute','http://purl.org/linked-data/sdmx/2009/attribute#', 2);
DB.DBA.XML_SET_NS_DECL('sdmx-concept',	'http://purl.org/linked-data/sdmx/2009/concept#', 2);
DB.DBA.XML_SET_NS_DECL('sdmxd',			'http://purl.org/linked-data/sdmx/2009/dimension#', 2);
DB.DBA.XML_SET_NS_DECL('sdmxm',			'http://purl.org/linked-data/sdmx/2009/measure#', 2);
DB.DBA.XML_SET_NS_DECL('skos',			'http://www.w3.org/2004/02/skos/core#', 2);
DB.DBA.XML_SET_NS_DECL('void',			'http://rdfs.org/ns/void#', 2);
DB.DBA.XML_SET_NS_DECL('xsd',			'http://www.w3.org/2001/XMLSchema#', 2);
