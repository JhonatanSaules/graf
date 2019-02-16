
//Credito
//CREATE INDEX ON :CELULA(REL);
//LOAD CSV WITH HEADERS FROM "file:///C:\\Users\\vobadm\\Desktop\\neo4j-community-3.4.9-windows\\neo4j-community-3.4.9\\bin\\cargaRequerimientoCdto.csv" AS csvLine
//MERGE (cel:CELULA {REL: csvLine.Cel})
//CREATE (req:REQUERIMIENTO {ID: csvLine.unico, ASUNTO: csvLine.Asunto, DESCRIPCION:csvLine.Descripcion, ESTADO:csvLine.Estado, IDREQ:csvLine.REQ})
//CREATE (req)-[:ES_REQUERIMIENTO_DE]->(cel);


//Cobranza
//CREATE INDEX ON :CELULA(REL);
//LOAD CSV WITH HEADERS FROM "file:///C:\\Users\\vobadm\\Desktop\\neo4j-community-3.4.9-windows\\neo4j-community-3.4.9\\bin\\cargaRequerimientoCbza.csv" AS csvLine
//MERGE (cel:CELULA {REL: csvLine.Cel})
//CREATE (req:REQUERIMIENTO {ID: csvLine.unico, ASUNTO: csvLine.Asunto, DESCRIPCION:csvLine.Descripcion, ESTADO:csvLine.Estado ,IDREQ:csvLine.REQ})
//CREATE (req)-[:ES_REQUERIMIENTO_DE]->(cel);

//Ot Credito
//CREATE INDEX ON :REQUERIMIENTO(IDREQ);
//LOAD CSV WITH HEADERS FROM "file:///C:\\Users\\vobadm\\Desktop\\neo4j-community-3.4.9-windows\\neo4j-community-3.4.9\\bin\\cargaOtCdto.csv" AS csvLine
//MERGE (req:REQUERIMIENTO {IDREQ: csvLine.REQ})
//CREATE (ot:OT {ID: csvLine.id, FOLIO: csvLine.id, RESPONSABLE: csvLine.Responsable, ESTATUS:csvLine.Estatus, FECHAIN:csvLine.FechaIn, FECHAFIN:csvLine.FechaFin, REQ: csvLine.REQ})
//CREATE (ot)-[:_]->(req);

//Ot Cobranza
CREATE INDEX ON :REQUERIMIENTO(IDREQ);
LOAD CSV WITH HEADERS FROM "file:///C:\\Users\\vobadm\\Desktop\\neo4j-community-3.4.9-windows\\neo4j-community-3.4.9\\bin\\cargaOtCbza.csv" AS csvLine
MERGE (req:REQUERIMIENTO {IDREQ: csvLine.REQ})
CREATE (ot:OT {ID: csvLine.id, FOLIO: csvLine.id, RESPONSABLE: csvLine.Responsable, ESTATUS:csvLine.Estatus, FECHAIN:csvLine.FechaIn, FECHAFIN:csvLine.FechaFin, REQ: csvLine.REQ})
CREATE (ot)-[:_]->(req);