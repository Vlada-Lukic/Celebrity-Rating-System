import net.proteanit.sql.DbUtils;
import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.*;
public class Employee {
    private JPanel Main;
    private JButton saveButton;
    private JTable table_1;
    private JButton updateButton;
    private JButton deleteButton;
    private JButton searchButton;
    private JTextField txtid;
    private javax.swing.JTextField txtServiceInMDR;
    private JTextField txtServiceInOVC;
    private JTextField txtFoodQualityInMDR;
    private JTextField txtRoomNumber;
    private JTextField txtFirstName;
    private JTextField txtLastName;
    private JTextField txtStationNumber;

    private JTextField RoomNumber;

    public static void main(String[] args) {
//======================= PROZOR ZA REGISTRACIJU ==============================================================
        JFrame frame = new JFrame("Medallia Registration");
        frame.setContentPane(new Employee().Main);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.pack();
        frame.setVisible(true);
    }
    //======================= CONN SA SQL ==============================================================
    Connection con;
    PreparedStatement pst;
    public void connect() {
        try {
            con = DriverManager.getConnection("jdbc:mysql://localhost/celebrity_guests", "jadmin", "1");
            System.out.println("Success");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    //======================= PRIKAZ TABELA ==============================================================
    void  table_load (){
        try {
            pst = con.prepareStatement("SELECT * FROM medallia");
            ResultSet rs = pst.executeQuery();
            table_1.setModel(DbUtils.resultSetToTableModel(rs));
        }catch (SQLException e){
            e.printStackTrace();
        }
    }
    //======================= SAVE BUTTON I UNOS PODATAKA ==============================================================
    public Employee() {
        connect();
        table_load();
        saveButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                String Room_Number,First_Name,Last_Name,Service_In_MDR,Food_Quality_In_MDR,Service_In_OVC,Station_Number;
                Room_Number = txtRoomNumber.getText();
                First_Name = txtFirstName.getText();
                Last_Name = txtLastName.getText();
                Service_In_MDR = txtServiceInMDR.getText();
                Food_Quality_In_MDR = txtFoodQualityInMDR.getText();
                Service_In_OVC = txtServiceInOVC.getText();
                Station_Number = txtStationNumber.getText();
                try {
                    pst = con.prepareStatement("insert into medallia(Room_Number,First_Name,Last_Name," +
                            "Service_In_MDR,Food_Quality_In_MDR,Service_In_OVC,Station_Number)values(?,?,?,?,?,?,?)");
                    pst.setString(1,Room_Number);
                    pst.setString(2,First_Name);
                    pst.setString(3,Last_Name);
                    pst.setString(4,Service_In_MDR);
                    pst.setString(5,Food_Quality_In_MDR);
                    pst.setString(6,Service_In_OVC);
                    pst.setString(7,Station_Number);

                    txtRoomNumber.setText("");
                    txtFirstName.setText("");
                    txtLastName.setText("");
                    txtServiceInMDR.setText("");
                    txtFoodQualityInMDR.setText("");
                    txtServiceInOVC.setText("");
                    txtStationNumber.setText("");
                    txtRoomNumber.requestFocus();
                    pst.executeUpdate();
                    JOptionPane.showMessageDialog(null,"Record Added");
                    table_load();
                }
                catch (SQLException e1){
                    e1.printStackTrace();
                }
            }
        });
//======================= SEARCH BUTTON ZA PRETRAGU GOSTIJU ==============================================================
        searchButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                try {
                    String Broj_Sobe = txtid.getText();
                    pst = con.prepareStatement("SELECT Room_Number,First_Name,Last_Name,Service_In_MDR,Food_Quality_In_MDR,Service_In_OVC,Station_Number FROM medallia WHERE Room_Number = ? ");
                    pst.setString(1,Broj_Sobe);
                    ResultSet rs = pst.executeQuery();
                    if (rs.next()==true){
                        String Room_Number = rs.getString(1);
                        String First_Name = rs.getString(2);
                        String Last_Name = rs.getString(3);
                        String Service_In_MDR = rs.getString(4);
                        String Food_Quality_In_MDR = rs.getString(5);
                        String Service_In_OVC = rs.getString(6);
                        String Station_Number = rs.getString(7);

                        txtRoomNumber.setText(Room_Number);
                        txtFirstName.setText(First_Name);
                        txtLastName.setText(Last_Name);
                        txtServiceInMDR.setText(Service_In_MDR);
                        txtFoodQualityInMDR.setText(Food_Quality_In_MDR);
                        txtServiceInOVC.setText(Service_In_OVC);
                        txtStationNumber.setText(Station_Number);

                    }else {
                        txtRoomNumber.setText("");
                        txtFirstName.setText("");
                        txtLastName.setText("");
                        txtServiceInMDR.setText("");
                        txtFoodQualityInMDR.setText("");
                        txtServiceInOVC.setText("");
                        txtStationNumber.setText("");
                        JOptionPane.showMessageDialog(null,"Invalid Room Number");
                    }
                }catch (SQLException ex){
                    ex.printStackTrace();
                }
            }
        });
//======================= UPDATE BUTTON  ==============================================================
        updateButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                String Room_Number, First_Name, Last_Name, Service_In_MDR, Food_Quality_In_MDR, Service_In_OVC, Station_Number;
                Room_Number = txtRoomNumber.getText();
                First_Name = txtFirstName.getText();
                Last_Name = txtLastName.getText();
                Service_In_MDR = txtServiceInMDR.getText();
                Food_Quality_In_MDR = txtFoodQualityInMDR.getText();
                Service_In_OVC = txtServiceInOVC.getText();
                Station_Number = txtStationNumber.getText();
                try {
                    pst = con.prepareStatement("UPDATE medallia SET First_Name = ?, Last_Name = ?, " +
                            "Service_In_MDR = ?, Food_Quality_In_MDR = ?, Service_In_OVC = ?, Station_Number = ? WHERE Room_Number = ?");
                    pst.setString(1, First_Name);
                    pst.setString(2, Last_Name);
                    pst.setString(3, Service_In_MDR);
                    pst.setString(4, Food_Quality_In_MDR);
                    pst.setString(5, Service_In_OVC);
                    pst.setString(6, Station_Number);
                    pst.setString(7, Room_Number);

                    pst.executeUpdate();
                    JOptionPane.showMessageDialog(null, "Record Update");
                    table_load();

                    txtRoomNumber.setText("");
                    txtFirstName.setText("");
                    txtLastName.setText("");
                    txtServiceInMDR.setText("");
                    txtFoodQualityInMDR.setText("");
                    txtServiceInOVC.setText("");
                    txtStationNumber.setText("");
                    txtRoomNumber.requestFocus();
                } catch (SQLException ex1) {
                    ex1.printStackTrace();
                }
            }
        });
//======================= DELETE BUTTON  ==============================================================
        deleteButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                String Room_Number;
                Room_Number = txtRoomNumber.getText();
                try {
                    pst = con.prepareStatement("DELETE FROM medallia WHERE Room_Number = ?");
                    pst.setString(1,Room_Number);
                    pst.executeUpdate();
                    JOptionPane.showMessageDialog(null,"Record Deleted");
                    table_load();
                    txtRoomNumber.setText("");
                    txtFirstName.setText("");
                    txtLastName.setText("");
                    txtServiceInMDR.setText("");
                    txtFoodQualityInMDR.setText("");
                    txtServiceInOVC.setText("");
                    txtStationNumber.setText("");
                    txtRoomNumber.requestFocus();
                }catch (SQLException ex2){
                    ex2.printStackTrace();
                }
            }
        });
    }
}
