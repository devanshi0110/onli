/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/J2EE/EJB30/SessionLocal.java to edit this template
 */
package ejb;

import Entity.AddElection;
import java.util.Collection;
import javax.ejb.Local;

/**
 *
 * @author KRUNAL
 */
@Local
public interface electionLocal {

    String insert(String electionName,String endDate);

    Collection<AddElection> display();

    void delete(int id);

    AddElection search(int id);

    String update(int id,String electionName,String endDate);
    
}
