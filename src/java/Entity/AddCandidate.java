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
import javax.persistence.Lob;
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
@Table(name = "add_candidate")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "AddCandidate.findAll", query = "SELECT a FROM AddCandidate a"),
    @NamedQuery(name = "AddCandidate.findById", query = "SELECT a FROM AddCandidate a WHERE a.id = :id"),
    @NamedQuery(name = "AddCandidate.findByElectionName", query = "SELECT a FROM AddCandidate a WHERE a.electionName = :electionName"),
    @NamedQuery(name = "AddCandidate.findByCandidateName", query = "SELECT a FROM AddCandidate a WHERE a.candidateName = :candidateName"),
    @NamedQuery(name = "AddCandidate.findByAddress", query = "SELECT a FROM AddCandidate a WHERE a.address = :address"),
    @NamedQuery(name = "AddCandidate.findByPhone", query = "SELECT a FROM AddCandidate a WHERE a.phone = :phone"),
    @NamedQuery(name = "AddCandidate.findByPartyName", query = "SELECT a FROM AddCandidate a WHERE a.partyName = :partyName")})
public class AddCandidate implements Serializable {

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
    @Column(name = "candidate_name")
    private String candidateName;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 445)
    @Column(name = "address")
    private String address;
    // @Pattern(regexp="^\\(?(\\d{3})\\)?[- ]?(\\d{3})[- ]?(\\d{4})$", message="Invalid phone/fax format, should be as xxx-xxx-xxxx")//if the field contains phone or fax number consider using this annotation to enforce field validation
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "phone")
    private String phone;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Column(name = "photo")
    private byte[] photo;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 145)
    @Column(name = "party_name")
    private String partyName;

    public AddCandidate() {
    }

    public AddCandidate(Integer id) {
        this.id = id;
    }

    public AddCandidate(Integer id, String electionName, String candidateName, String address, String phone, byte[] photo, String partyName) {
        this.id = id;
        this.electionName = electionName;
        this.candidateName = candidateName;
        this.address = address;
        this.phone = phone;
        this.photo = photo;
        this.partyName = partyName;
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

    public String getCandidateName() {
        return candidateName;
    }

    public void setCandidateName(String candidateName) {
        this.candidateName = candidateName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public byte[] getPhoto() {
        return photo;
    }

    public void setPhoto(byte[] photo) {
        this.photo = photo;
    }

    public String getPartyName() {
        return partyName;
    }

    public void setPartyName(String partyName) {
        this.partyName = partyName;
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
        if (!(object instanceof AddCandidate)) {
            return false;
        }
        AddCandidate other = (AddCandidate) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entity.AddCandidate[ id=" + id + " ]";
    }
    
}
