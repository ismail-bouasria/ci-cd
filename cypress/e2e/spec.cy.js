describe('template spec', () => {
  it('deployed react app to localhost', function(){
    cy.visit('http://localhost:3000')
    cy.contains('3 user(s) already registered')
  })

})