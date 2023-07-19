/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/J2EE/EJB30/StatelessEjbClass.java to edit this template
 */
package ejb;

import Entity.AddElection;
import java.util.Collection;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author KRUNAL
 */
@Stateless
public class election implements electionLocal {

    @PersistenceContext(unitName = "SecureJSFAppPU")
    private EntityManager em;

    public void persist(Object object) {
        em.persist(object);
    }

    @Override
    public String insert(String electionName,String endDate) {
        
        AddElection addele = new AddElection();
        addele.setElectionName(electionName);
        addele.setEndDate(endDate);
        return "Inserted";
    }

    @Override
    public Collection<AddElection> display() {
        Collection<AddElection> addele = em.createNamedQuery("AddElection.findAll").getResultList();
        return addele;
    }

    @Override
    public void delete(int id) {
        AddElection addele = (AddElection) em.find(AddElection.class, id);
        em.remove(addele);
    }

    @Override
    public AddElection search(int id) {
        AddElection ex = em.find(AddElection.class, id);
        return ex;
    }

    @Override
    public String update(int id,String electionName,String endDate) {
        AddElection addele =em.find(AddElection.class, id);
        addele.getId();
        addele.setElectionName(electionName);
        addele.setEndDate(endDate);
        return "Updated";
    }
    
    
    
    
    
    
       
    
    
    
}
