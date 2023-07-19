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
@Table(name = "user_reg")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "UserReg.findAll", query = "SELECT u FROM UserReg u"),
    @NamedQuery(name = "UserReg.findById", query = "SELECT u FROM UserReg u WHERE u.id = :id"),
    @NamedQuery(name = "UserReg.findByName", query = "SELECT u FROM UserReg u WHERE u.name = :name"),
    @NamedQuery(name = "UserReg.findByEmail", query = "SELECT u FROM UserReg u WHERE u.email = :email"),
    @NamedQuery(name = "UserReg.findByDob", query = "SELECT u FROM UserReg u WHERE u.dob = :dob"),
    @NamedQuery(name = "UserReg.findByGender", query = "SELECT u FROM UserReg u WHERE u.gender = :gender"),
    @NamedQuery(name = "UserReg.findByPhone", query = "SELECT u FROM UserReg u WHERE u.phone = :phone"),
    @NamedQuery(name = "UserReg.findByAddress", query = "SELECT u FROM UserReg u WHERE u.address = :address"),
    @NamedQuery(name = "UserReg.findByPassword", query = "SELECT u FROM UserReg u WHERE u.password = :password"),
    @NamedQuery(name = "UserReg.findByType", query = "SELECT u FROM UserReg u WHERE u.type = :type"),
    @NamedQuery(name = "UserReg.findByStatus", query = "SELECT u FROM UserReg u WHERE u.status = :status")})
public class UserReg implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "name")
    private String name;
    // @Pattern(regexp="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?", message="Invalid email")//if the field contains email address consider using this annotation to enforce field validation
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "email")
    private String email;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "dob")
    private String dob;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "gender")
    private String gender;
    // @Pattern(regexp="^\\(?(\\d{3})\\)?[- ]?(\\d{3})[- ]?(\\d{4})$", message="Invalid phone/fax format, should be as xxx-xxx-xxxx")//if the field contains phone or fax number consider using this annotation to enforce field validation
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "phone")
    private String phone;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "address")
    private String address;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 255)
    @Column(name = "password")
    private String password;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "type")
    private String type;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "status")
    private String status;

    public UserReg() {
    }

    public UserReg(Integer id) {
        this.id = id;
    }

    public UserReg(Integer id, String name, String email, String dob, String gender, String phone, String address, String password, String type, String status) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.dob = dob;
        this.gender = gender;
        this.phone = phone;
        this.address = address;
        this.password = password;
        this.type = type;
        this.status = status;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
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
        if (!(object instanceof UserReg)) {
            return false;
        }
        UserReg other = (UserReg) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entity.UserReg[ id=" + id + " ]";
    }
    
}
