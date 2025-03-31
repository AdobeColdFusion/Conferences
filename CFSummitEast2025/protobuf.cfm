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