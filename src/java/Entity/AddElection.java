/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author KRUNAL
 */
@Entity
@Table(name = "add_election")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "AddElection.findAll", query = "SELECT a FROM AddElection a"),
    @NamedQuery(name = "AddElection.findById", query = "SELECT a FROM AddElection a WHERE a.id = :id"),
    @NamedQuery(name = "AddElection.findByElectionName", query = "SELECT a FROM AddElection a WHERE a.electionName = :electionName"),
    @NamedQuery(name = "AddElection.findByEndDate", query = "SELECT a FROM AddElection a WHERE a.endDate = :endDate")})
public class AddElection implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 145)
    @Column(name = "election_name")
    private String electionName;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "end_date")
    private String endDate;

    public AddElection() {
    }

    public AddElection(Integer id) {
        this.id = id;
    }

    public AddElection(Integer id, String electionName, String endDate) {
        this.id = id;
        this.electionName = electionName;
        this.endDate = endDate;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
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

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof AddElection)) {
            return false;
        }
        AddElection other = (AddElection) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entity.AddElection[ id=" + id + " ]";
    }
    
}
