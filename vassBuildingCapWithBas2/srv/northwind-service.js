const cds = require("@sap/cds")

module.exports = cds.service.impl(async function (srv) {

    srv.on('GetPerson', async(req) => {
        try{
            const northwind = await cds.connect.to('Northwind');
            const response = await northwind.tx(req).get(`/Persons(${req.data.PersonID})`);
            return response;
        } catch (error) {
            return error;
        }
    })
})