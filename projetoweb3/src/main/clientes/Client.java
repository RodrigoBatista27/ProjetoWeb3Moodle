package clientes;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;


@Entity

public class Client {

    @Id
    private Integer id;

    private String nome;

    private String cpf;

    private String resp;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getResp() {
        return resp;
    }

    public void setResp(String resp) {
        this.resp = resp;
    }

    
}
