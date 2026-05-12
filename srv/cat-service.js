const cds = require('@sap/cds')

module.exports = class employeeSerice extends cds.ApplicationService { init() {

  const { employee, Attendances, Leaves, Bonuses, Deductions } = cds.entities('employeeSerice')





  return super.init()
}}




  // this.before (['CREATE', 'UPDATE'], employee, async (req) => {
  //   console.log('Before CREATE/UPDATE employee', req.data)
  // })
  // this.after ('READ', employee, async (employee, req) => {
  //   console.log('After READ employee', employee)
  // })
  // this.before (['CREATE', 'UPDATE'], Attendances, async (req) => {
  //   console.log('Before CREATE/UPDATE Attendances', req.data)
  // })
  // this.after ('READ', Attendances, async (attendances, req) => {
  //   console.log('After READ Attendances', attendances)
  // })
  // this.before (['CREATE', 'UPDATE'], Leaves, async (req) => {
  //   console.log('Before CREATE/UPDATE Leaves', req.data)
  // })
  // this.after ('READ', Leaves, async (leaves, req) => {
  //   console.log('After READ Leaves', leaves)
  // })
  // this.before (['CREATE', 'UPDATE'], Bonuses, async (req) => {
  //   console.log('Before CREATE/UPDATE Bonuses', req.data)
  // })
  // this.after ('READ', Bonuses, async (bonuses, req) => {
  //   console.log('After READ Bonuses', bonuses)
  // })
  // this.before (['CREATE', 'UPDATE'], Deductions, async (req) => {
  //   console.log('Before CREATE/UPDATE Deductions', req.data)
  // })
  // this.after ('READ', Deductions, async (deductions, req) => {
  //   console.log('After READ Deductions', deductions)
  // })

