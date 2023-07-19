/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSF/JSFManagedBean.java to edit this template
 */
package ManagedBean;

import Entity.AddElection;
import ejb.electionLocal;
import javax.inject.Named;
import javax.enterprise.context.SessionScoped;
import java.io.Serializable;
import java.util.Collection;
import javax.ejb.EJB;

/**
 *
 * @author KRUNAL
 */
@Named(value = "election")
@SessionScoped
public class election implements Serializable {

    @EJB
    private electionLocal election;

    int id;
    String electionName,endDate;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getElectionName() {
        return electionName;
    }

    public void setElectionName(String electionName) {
        this.electionName = electionName;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }
    
    
    public election() {
    }
    
    public String insert(){
        
        try{
            election.insert(electionName, endDate);
        }catch(Exception e){
            System.out.println(e);
        }
        electionName = "";
        endDate = "";
        return "view_election";
    }
    
    public Collection<AddElection> display(){
        return this.election.display();
    }
    
    public void remove(int id){
        this.election.delete(id);
    }
    public String search(int Id){
        AddElection addele = election.search(Id);
        id= addele.getId();
        electionName = addele.getElectionName();
        endDate = addele.getEndDate();
        return "update_election";
    }
    public String update(){
        election.update(id, electionName, endDate);
        return "view_election";
    }
    
}
