const cds = require('@sap/cds')
const { SELECT, INSERT, UPDATE, DELETE } = cds.ql

module.exports = (srv) => {
    srv.after(['CREATE'], 'Orders', async (req) => {
        const defaultOrderItem = {
            order_ID : req.ID,
            product_name : "Free Ship EU"
        }

        const insertOrderItems = INSERT.into `my.sales.OrderItems`.entries(defaultOrderItem)
        await cds.run(insertOrderItems)
    })
}