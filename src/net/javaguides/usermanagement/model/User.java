package net.javaguides.usermanagement.model;

public class User {
    protected int id;
    protected String desa;
    protected String kecamatan;
    protected String positif;

    public User() {}

    public User(String desa, String kecamatan, String positif) {
        super();
        this.desa = desa;
        this.kecamatan = kecamatan;
        this.positif = positif;
    }

    public User(int id, String desa, String kecamatan, String positif) {
        super();
        this.id = id;
        this.desa = desa;
        this.kecamatan = kecamatan;
        this.positif = positif;
    }

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getDesa() {
        return desa;
    }
    public void setDesa(String desa) {
        this.desa = desa;
    }
    public String getKecamatan() {
        return kecamatan;
    }
    public void setKecamatan(String kecamatan) {
        this.kecamatan = kecamatan;
    }
    public String getPositif() {
        return positif;
    }
    public void setPositif(String positif) {
        this.positif = positif;
    }
}
