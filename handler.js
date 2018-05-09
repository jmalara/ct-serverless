'use strict';

module.exports.genIndex = (event, context, callback) => {
    const response = {
        statusCode: 200,
        body: JSON.stringify({
            message: 'This is the ConsumerTrack ish',
        }),
    };

    callback(null, response);
};