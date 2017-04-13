package util;

/**
 * Created by AA on 2017/4/12.
 */
public class IPSeeker {
    private static IPSeeker ipSeeker = null;
    private String area;
    private String country;
    public static IPSeeker getInstance(){
        ipSeeker = new IPSeeker();
        return ipSeeker;
    }

    public String getArea(String ip) {
        return area;
    }

    public String getCountry(String ip) {
        return country;
    }
    public boolean isValidIp(String ip){
        return ip != null && ip.trim().matches("^[0-9]+\\.[0-9]+\\.[0-9]+\\.[0-9]+$");
    }
}
