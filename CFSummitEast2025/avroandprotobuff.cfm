<h1>Avro &amp; Protobuff</h1>
<h2>Avro</h2>
<cfscript>
    // define the Avro schema
    mySchema=   '{  
                    "namespace": "first.example",
                    "type": "record",
                    "name": "User",
                    "fields": [
                        {"name": "name", "type": "string"},
                        {"name": "favorite_number",  "type": ["int","null"]},
                        {"name": "favorite_color", "type": ["string","null"]}
                    ]
                }'
    // set the data that conforms the schema above
    data= {
            "name":"Jack Sparrow",
            "favorite_number":{"int":9},
            "favorite_color":{"string":"red"}
        }
 
    avroSerializeResponse = serializeAVRO(data, mySchema)
writeDump(serializeJSON(data));
writeOutput(len(serializeJSON(data)))
writedump(avroSerializeResponse);
writeOutput(len(avroSerializeResponse))
writedump(deserializeAVRO(avroSerializeResponse, mySchema));
</cfscript>
<hr> 
<h2>Protobuff</h2>
<cfscript>
    // define the data
    data = {
        "order_id": 32,
        "order_date": "09-09-2022",
        "order_amount": 345,
        "customer":{
            "customer_id":344,
            "customer_name":"Jack"
        }
    }
    // serializeProtoBuf((data, schema, messageType, queryFormat, useCustomSerialisation, protoPath)
    protoSerRes = serializeProtoBuf(data,'Order.proto','Order','struct',false); 
    writeDump(serializeJSON(data));
    writeOutput(len(serializeJSON(data)))
    writedump(protoSerRes);
    writeOutput(len(protoSerRes));
    writeDump(data);
</cfscript>