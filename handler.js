'use strict';

module.exports.genIndex = (event, context, callback) => {

    var html = '<html><head><title>ConsumerTrak Serverless Example</title></head><body>\
    <h1>Why Not Serverless????</h1>\
    <table>\
    <tr>\
    <td>Lambda Region:</td><td>' + process.env.AWS_REGION + '</td></tr>\
    <td>Request ID:</td><td>' + context.awsRequestId + '</td></tr>\
    <td>Function Name:</td><td>' + context.functionName + '</td></tr>\
    </table><body></html>';

    const response = {
        statusCode: 200,
        headers: {
            'Content-Type': 'text/html',
        },
        body: html,
    };
    callback(null, response);
};