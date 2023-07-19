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
@Table(name = "vote")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Vote.findAll", query = "SELECT v FROM Vote v"),
    @NamedQuery(name = "Vote.findById", query = "SELECT v FROM Vote v WHERE v.id = :id"),
    @NamedQuery(name = "Vote.findByElectionName", query = "SELECT v FROM Vote v WHERE v.electionName = :electionName"),
    @NamedQuery(name = "Vote.findByCid", query = "SELECT v FROM Vote v WHERE v.cid = :cid"),
    @NamedQuery(name = "Vote.findByCandidateName", query = "SELECT v FROM Vote v WHERE v.candidateName = :candidateName"),
    @NamedQuery(name = "Vote.findByUname", query = "SELECT v FROM Vote v WHERE v.uname = :uname"),
    @NamedQuery(name = "Vote.findByUid", query = "SELECT v FROM Vote v WHERE v.uid = :uid"),
    @NamedQuery(name = "Vote.findByTime", query = "SELECT v FROM Vote v WHERE v.time = :time"),
    @NamedQuery(name = "Vote.findByStatus", query = "SELECT v FROM Vote v WHERE v.status = :status")})
public class Vote implements Serializable {

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
    @Column(name = "cid")
    private String cid;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 145)
    @Column(name = "candidate_name")
    private String candidateName;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 145)
    @Column(name = "uname")
    private String uname;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "uid")
    private String uid;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "time")
    private String time;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "status")
    private String status;

    public Vote() {
    }

    public Vote(Integer id) {
        this.id = id;
    }

    public Vote(Integer id, String electionName, String cid, String candidateName, String uname, String uid, String time, String status) {
        this.id = id;
        this.electionName = electionName;
        this.cid = cid;
        this.candidateName = candidateName;
        this.uname = uname;
        this.uid = uid;
        this.time = time;
        this.status = status;
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

    public String getCid() {
        return cid;
    }

    public void setCid(String cid) {
        this.cid = cid;
    }

    public String getCandidateName() {
        return candidateName;
    }

    public void setCandidateName(String candidateName) {
        this.candidateName = candidateName;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
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
        if (!(object instanceof Vote)) {
            return false;
        }
        Vote other = (Vote) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entity.Vote[ id=" + id + " ]";
    }
    
}
