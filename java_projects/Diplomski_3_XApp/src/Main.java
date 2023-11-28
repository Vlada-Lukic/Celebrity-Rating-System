import INTERNAL.*;
import net.proteanit.sql.DbUtils;
import org.w3c.dom.CDATASection;
import javax.swing.*;
import javax.swing.table.DefaultTableCellRenderer;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableModel;
import java.awt.*;
import java.awt.event.*;
import java.sql.*;
import java.text.DecimalFormat;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import net.proteanit.sql.DbUtils;
import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.*;
import java.util.Vector;
import static com.sun.org.apache.xerces.internal.util.DOMUtil.setVisible;
public class Main implements ActionListener {
    public Main() throws SQLException {
    }

    public static void main(String[] args) throws SQLException {
        JFrame window = new JFrame();
        JPanel mainPanel = new JPanel();
        JPanel menuPanel = new JPanel();
        //------------------------------------------
        ImagePanel panel = new ImagePanel(System.getenv("JAVA_RESOURCES") + "/diplomski/Apex.jpg");
        panel.setLayout(null);
        //------------------------------------------
        DateAndTime clockPanel = new DateAndTime();
        window.getContentPane().add(clockPanel).setBounds(40, 10, 220, 30);
        //--------------------------------------------
        JButton bt1 = new JButton("GUEST'S LIST");
        bt1.setFont(new Font("Arial", Font.ITALIC, 24));
        bt1.setBounds(40, 650, 220, 50);
        panel.add(bt1);
        bt1.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                System.out.println("Button 1 Clicke me!!");
                Connection con = null;
                try {
                    con = DriverManager.getConnection("jdbc:mysql://localhost/celebrity_guests", "jadmin", "1");
                    System.out.println("Success");
                } catch (SQLException ex) {
                    ex.printStackTrace();
                    return;
                }
                String query = "SELECT * FROM guests";
                PreparedStatement pst = null;
                ResultSet rs = null;
                try {
                    pst = con.prepareStatement(query);
                    rs = pst.executeQuery();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                    return;
                }
                DefaultTableModel tableModel = null;
                try {
                    ResultSetMetaData metaData = rs.getMetaData();
                    int columnCount = metaData.getColumnCount();
                    // Add column names to the table model
                    Vector<String> columnNames = new Vector<>();
                    for (int columnIndex = 1; columnIndex <= columnCount; columnIndex++) {
                        columnNames.add(metaData.getColumnName(columnIndex));
                    }
                    // Add rows to the table model
                    Vector<Vector<Object>> data = new Vector<>();
                    while (rs.next()) {
                        Vector<Object> row = new Vector<>();
                        for (int columnIndex = 1; columnIndex <= columnCount; columnIndex++) {
                            row.add(rs.getObject(columnIndex));
                        }
                        data.add(row);
                    }
                    tableModel = new DefaultTableModel(data, columnNames);
                } catch (SQLException ex) {
                    ex.printStackTrace();
                    return;
                }
                JTable jTable = new JTable(tableModel);
                DefaultTableCellRenderer centerRenderer = new DefaultTableCellRenderer();
                centerRenderer.setHorizontalAlignment(JLabel.CENTER);
                for (int i = 0; i < jTable.getColumnCount(); i++) {
                    jTable.getColumnModel().getColumn(i).setCellRenderer(centerRenderer);
                }
                JScrollPane scrollPane = new JScrollPane(jTable);
                JDialog dialog = new JDialog(window, "Guest's List", true);
                dialog.setPreferredSize(new Dimension(400, 600));
                dialog.add(scrollPane);
                dialog.pack();
                dialog.setLocationRelativeTo(window);
                dialog.setLocationRelativeTo(null);
                dialog.setVisible(true);
            }
        });
//----------------------------------------------------------------------------------------------------------------------
        JButton bt2 = new JButton("WAITER'S LIST");
        bt2.setFont(new Font("Arial", Font.ITALIC, 24));
        bt2.setBounds(340, 650, 220, 50);
        panel.add(bt2);
        bt2.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                System.out.println("Button 2 Clicke me!!");
                Connection con = null;
                try {
                    con = DriverManager.getConnection("jdbc:mysql://localhost/celebrity_guests", "jadmin", "1");
                    System.out.println("Success");
                } catch (SQLException ex) {
                    ex.printStackTrace();
                    return;
                }
                String query = "SELECT * FROM waiters ORDER BY `Station_Number` ASC";
                PreparedStatement pst = null;
                ResultSet rs = null;
                try {
                    pst = con.prepareStatement(query);
                    rs = pst.executeQuery();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                    return;
                }
                DefaultTableModel tableModel = null;
                try {
                    ResultSetMetaData metaData = rs.getMetaData();
                    int columnCount = metaData.getColumnCount();
                    Vector<String> columnNames = new Vector<>();
                    for (int columnIndex = 1; columnIndex <= columnCount; columnIndex++) {
                        columnNames.add(metaData.getColumnName(columnIndex));
                    }
                    Vector<Vector<Object>> data = new Vector<>();
                    while (rs.next()) {
                        Vector<Object> row = new Vector<>();
                        for (int columnIndex = 1; columnIndex <= columnCount; columnIndex++) {
                            row.add(rs.getObject(columnIndex));
                        }
                        data.add(row);
                    }
                    tableModel = new DefaultTableModel(data, columnNames);
                } catch (SQLException ex) {
                    ex.printStackTrace();
                    return;
                }
                JTable jTable = new JTable(tableModel);
                DefaultTableCellRenderer centerRenderer = new DefaultTableCellRenderer();
                centerRenderer.setHorizontalAlignment(JLabel.CENTER);

                for (int i = 0; i < jTable.getColumnCount(); i++) {
                    jTable.getColumnModel().getColumn(i).setCellRenderer(centerRenderer);
                }
                JScrollPane scrollPane = new JScrollPane(jTable);
                JDialog dialog = new JDialog();
                dialog.setTitle("Waiter's List");
                dialog.setModal(true);
                dialog.setPreferredSize(new Dimension(400, 600));
                dialog.add(scrollPane);
                dialog.pack();
                dialog.setLocationRelativeTo(null);
                dialog.setVisible(true);
            }
        });
//----------------------------------------------------------------------------------------------------------------------
        JButton bt3 = new JButton("STATION'S");
        bt3.setFont(new Font("Arial", Font.ITALIC, 24));
        bt3.setBounds(640, 650, 220, 50);
        panel.add(bt3);
        bt3.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                System.out.println("Button 3 Clicke me!!");
                Connection con = null;
                try {
                    con = DriverManager.getConnection("jdbc:mysql://localhost/celebrity_guests", "jadmin", "1");
                    System.out.println("Success");
                } catch (SQLException ex) {
                    ex.printStackTrace();
                    return;
                }
                String query = "SELECT * FROM stations_and_tables";
                PreparedStatement pst = null;
                ResultSet rs = null;
                try {
                    pst = con.prepareStatement(query);
                    rs = pst.executeQuery();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                    return;
                }
                DefaultTableModel tableModel = new DefaultTableModel();
                try {
                    ResultSetMetaData metaData = rs.getMetaData();
                    int columnCount = metaData.getColumnCount();
                    for (int columnIndex = 1; columnIndex <= columnCount; columnIndex++) {
                        tableModel.addColumn(metaData.getColumnName(columnIndex));
                    }
                    while (rs.next()) {
                        Vector<Object> row = new Vector<>();
                        for (int columnIndex = 1; columnIndex <= columnCount; columnIndex++) {
                            row.add(rs.getObject(columnIndex));
                        }
                        tableModel.addRow(row);
                    }
                } catch (SQLException ex) {
                    ex.printStackTrace();
                    return;
                }
                JTable jTable = new JTable(tableModel);
                DefaultTableCellRenderer centerRenderer = new DefaultTableCellRenderer();
                centerRenderer.setHorizontalAlignment(JLabel.CENTER);
                for (int i = 0; i < jTable.getColumnCount(); i++) {
                    jTable.getColumnModel().getColumn(i).setCellRenderer(centerRenderer);
                }
                JScrollPane scrollPane = new JScrollPane(jTable);
                JDialog dialog = new JDialog(window, "Station's", true);
                dialog.setPreferredSize(new Dimension(750, 600));
                dialog.add(scrollPane);
                dialog.pack();
                dialog.setLocationRelativeTo(window);
                dialog.setLocationRelativeTo(null);
                dialog.setVisible(true);
            }
        });
//----------------------------------------------------------------------------------------------------------------------
        JButton bt4 = new JButton("MEDALLIA");
        bt4.setFont(new Font("Arial", Font.ITALIC, 24));
        bt4.setBounds(940, 650, 220, 50);
        panel.add(bt4);
        bt4.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                System.out.println("Button 4 Clicke me!!");
                Connection con = null;
                try {
                    con = DriverManager.getConnection("jdbc:mysql://localhost/celebrity_guests", "jadmin", "1");
                    System.out.println("Success");
                } catch (SQLException ex) {
                    ex.printStackTrace();
                    return;
                }
                String query = "SELECT * FROM medallia";
                PreparedStatement pst = null;
                ResultSet rs = null;
                try {
                    pst = con.prepareStatement(query);
                    rs = pst.executeQuery();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                    return;
                }
                DefaultTableModel tableModel = null;
                try {
                    tableModel = buildTableModel(rs);
                } catch (SQLException ex) {
                    ex.printStackTrace();
                    return;
                }
                JTable jTable = new JTable(tableModel);
                DefaultTableCellRenderer centerRenderer = new DefaultTableCellRenderer();
                centerRenderer.setHorizontalAlignment(JLabel.CENTER);
                for (int i = 0; i < jTable.getColumnCount(); i++) {
                    jTable.getColumnModel().getColumn(i).setCellRenderer(centerRenderer);
                }
                JScrollPane scrollPane = new JScrollPane(jTable);
                JDialog dialog = new JDialog(window, "Medallia", true);
                dialog.setPreferredSize(new Dimension(750, 600));
                dialog.add(scrollPane);
                dialog.pack();
                dialog.setLocationRelativeTo(window);
                dialog.setVisible(true);
            }
            private DefaultTableModel buildTableModel(ResultSet rs) throws SQLException {
                ResultSetMetaData metaData = rs.getMetaData();
                Vector<String> columnNames = new Vector<>();
                int columnCount = metaData.getColumnCount();
                for (int columnIndex = 1; columnIndex <= columnCount; columnIndex++) {
                    columnNames.add(metaData.getColumnName(columnIndex));
                }
                Vector<Vector<Object>> data = new Vector<>();
                while (rs.next()) {
                    Vector<Object> row = new Vector<>();
                    for (int columnIndex = 1; columnIndex <= columnCount; columnIndex++) {
                        row.add(rs.getObject(columnIndex));
                    }
                    data.add(row);
                }
                return new DefaultTableModel(data, columnNames);
            }
        });
//----------------------------------------------------------------------------------------------------------------------
        JButton bt5 = new JButton("RATING SCORE");
        bt5.setFont(new Font("Arial", Font.ITALIC, 24));
        bt5.setBounds(1240, 650, 220, 50);
        panel.add(bt5);
        bt5.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                String url = "jdbc:mysql://localhost/celebrity_guests";
                String username = "jadmin";
                String password = "1";

                JTable table = new JTable();
                DefaultTableModel model = new DefaultTableModel();
                model.addColumn("Station Number");
                model.addColumn("ID Number");
                model.addColumn("First Name");
                model.addColumn("Last Name");
                model.addColumn("Service In MDR");
                model.addColumn("Food Quality In MDR");
                model.addColumn("Service In OVC");
                table.setModel(model);

                try (Connection connection = DriverManager.getConnection(url, username, password);
                     Statement statement = connection.createStatement();
                     ResultSet resultSet = statement.executeQuery("SELECT g.Station_Number, " +
                             "k.ID_Number, k.First_Name, k.Last_Name, " +
                             "ROUND(AVG(g.Service_In_MDR) * 10, 2) AS AvgServiceInMDR, " +
                             "ROUND(AVG(g.Food_Quality_In_MDR) * 10, 2) AS AvgFoodQualityInMDR, " +
                             "ROUND(AVG(g.Service_In_OVC) * 10, 2) AS AvgServiceInOVC " +
                             "FROM medallia g " +
                             "JOIN waiters k ON g.Station_Number = k.Station_Number " +
                             "WHERE g.Station_Number IS NOT NULL " +
                             "GROUP BY g.Station_Number, k.ID_Number, k.First_Name, k.Last_Name " +
                             "ORDER BY g.Station_Number")) {

                    while (resultSet.next()) {
                        int stationNumber = resultSet.getInt("Station_Number");
                        int idNumber = resultSet.getInt("ID_Number");
                        String firstName = resultSet.getString("First_Name");
                        String lastName = resultSet.getString("Last_Name");
                        double avgServiceInMDR = resultSet.getDouble("AvgServiceInMDR");
                        double avgFoodQualityInMDR = resultSet.getDouble("AvgFoodQualityInMDR");
                        double avgServiceInOVC = resultSet.getDouble("AvgServiceInOVC");

                        DecimalFormat decimalFormat = new DecimalFormat("0.00");
                        String formattedServiceInMDR = decimalFormat.format(avgServiceInMDR);
                        String formattedFoodQualityInMDR = decimalFormat.format(avgFoodQualityInMDR);
                        String formattedServiceInOVC = decimalFormat.format(avgServiceInOVC);

                        model.addRow(new Object[]{stationNumber, idNumber, firstName, lastName,
                                formattedServiceInMDR, formattedFoodQualityInMDR, formattedServiceInOVC});
                    }
                } catch (SQLException e1) {
                    e1.printStackTrace();
                }
                JTable jTable = new JTable(model);
                DefaultTableCellRenderer centerRenderer = new DefaultTableCellRenderer();
                centerRenderer.setHorizontalAlignment(JLabel.CENTER);
                for (int i = 0; i < jTable.getColumnCount(); i++) {
                    jTable.getColumnModel().getColumn(i).setCellRenderer(centerRenderer);
                }
                JScrollPane scrollPane = new JScrollPane(jTable);
                scrollPane.setPreferredSize(new Dimension(750, 450));
                JDialog dialog = new JDialog();
                dialog.setTitle("Rating Score");
                dialog.setModal(true);
                dialog.setResizable(false);
                dialog.add(scrollPane);
                dialog.pack();
                dialog.setSize(new Dimension(750, 450));
                dialog.setLocationRelativeTo(null);
                dialog.setVisible(true);
            }
        });
//----------------------------------------------------------------------------------------------------------------------
        JButton bt6 = new JButton("CRUISE RATING");
        bt6.setFont(new Font("Arial", Font.ITALIC, 24));
        bt6.setBounds(1240, 10, 220, 50);
        panel.add(bt6);
        bt6.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                String url = "jdbc:mysql://localhost/celebrity_guests";
                String username = "jadmin";
                String password = "1";

                double totalAvgServiceInMDR = 0;
                double totalAvgFoodQualityInMDR = 0;
                double totalAvgServiceInOVC = 0;
                int rowCount = 0;
                try (Connection connection = DriverManager.getConnection(url, username, password);
                     Statement statement = connection.createStatement();
                     ResultSet resultSet = statement.executeQuery("SELECT ROUND(AVG(g.Service_In_MDR) * 10, 2) AS AvgServiceInMDR, " +
                             "ROUND(AVG(g.Food_Quality_In_MDR) * 10, 2) AS AvgFoodQualityInMDR, " +
                             "ROUND(AVG(g.Service_In_OVC) * 10, 2) AS AvgServiceInOVC " +
                             "FROM medallia g " +
                             "WHERE g.Station_Number IS NOT NULL")) {

                    while (resultSet.next()) {
                        totalAvgServiceInMDR += resultSet.getDouble("AvgServiceInMDR");
                        totalAvgFoodQualityInMDR += resultSet.getDouble("AvgFoodQualityInMDR");
                        totalAvgServiceInOVC += resultSet.getDouble("AvgServiceInOVC");
                        rowCount++;
                    }
                } catch (SQLException e1) {
                    e1.printStackTrace();
                }
                double avgServiceInMDR = totalAvgServiceInMDR / rowCount;
                double avgFoodQualityInMDR = totalAvgFoodQualityInMDR / rowCount;
                double avgServiceInOVC = totalAvgServiceInOVC / rowCount;
                DefaultTableModel model = new DefaultTableModel();
                model.addColumn("Service In MDR");
                model.addColumn("Food Quality In MDR");
                model.addColumn("Service In OVC");
                model.addRow(new Object[]{avgServiceInMDR, avgFoodQualityInMDR, avgServiceInOVC});

                JTable jTable = new JTable(model);
                DefaultTableCellRenderer centerRenderer = new DefaultTableCellRenderer();
                centerRenderer.setHorizontalAlignment(JLabel.CENTER);
                for (int i = 0; i < jTable.getColumnCount(); i++) {
                    jTable.getColumnModel().getColumn(i).setCellRenderer(centerRenderer);
                }
                JScrollPane scrollPane = new JScrollPane(jTable);
                JDialog dialog = new JDialog(window, "Total Average Rating Score", true);
                dialog.setPreferredSize(new Dimension(500, 450));
                dialog.add(scrollPane);
                dialog.pack();
                dialog.setLocationRelativeTo(window);
                dialog.setVisible(true);
            }
        });
//----------------------------------------------------------------------------------------------------------------------
        window.setSize(1540, 800);
        window.add(panel);
        window.setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
        window.setTitle("CELEBRITY RATING  ---> Created by Vlada");
        window.setResizable(true);
        window.setLocationRelativeTo(null);
        window.setVisible(true);
    }

    @Override
    public void actionPerformed(ActionEvent e) {
    }
}
//----------------------------------------------------------------------------------------------------------------------


