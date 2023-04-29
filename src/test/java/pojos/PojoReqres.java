package pojos;

public class PojoReqres {
    // 1- tum variable'lari private olarak olustur
    private String name;
    private String job;

    // 2- tum variable'lar icin getter ve setter metodlari olusturalim

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }

    // 3- tum parametreleri kullanarak bir constructor olusturalim

    public PojoReqres(String name, String job) {
        this.name = name;
        this.job = job;
    }


    // 4- default constructor yerine manuel olarak parametresiz bir constructor olusturalim

    public PojoReqres() {
    }


    // 5- toString metodu olusturalim


    @Override
    public String toString() {
        return "PojoReqres{" +
                "name='" + name + '\'' +
                ", job='" + job + '\'' +
                '}';
    }
}
