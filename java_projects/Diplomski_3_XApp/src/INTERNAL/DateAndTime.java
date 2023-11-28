package INTERNAL;
import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.text.SimpleDateFormat;
import java.time.ZoneId;
import java.util.Date;

public class DateAndTime extends JPanel {
    private JLabel timeLabel;
    public DateAndTime(){
        setLayout(new FlowLayout());
        timeLabel = new JLabel();
        add(timeLabel);
        Timer timer = new Timer(1000, new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                updateTime();
            }
        });
        timer.start();
    }
    public void ZoneId(){
        ZoneId zoneId = ZoneId.systemDefault();
        JLabel zoneIdLabel = new JLabel("My Time Zone: " + zoneId.getId());
    }
    private void updateTime(){
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd / MMM / yyyy  HH:mm:ss");
        Date date = new Date();
        timeLabel.setText(dateFormat.format(date));
        Font font = new Font("Arial", Font.PLAIN, 18);
        timeLabel.setFont(font);
    }
}
