package Central;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.Socket;
import java.util.ArrayList;


// Esta clase debería emitir ls reportes??


public class SucursalListener extends Thread {
    private Socket sucursalSocket;

    public SucursalListener(Socket sucursalSocket){
        this.sucursalSocket = sucursalSocket;
    }

    @Override
    public void run() {
        String message;
        try {
            DataInputStream in = new DataInputStream(this.sucursalSocket.getInputStream());
            DataOutputStream out = new DataOutputStream(this.sucursalSocket.getOutputStream());

            while(!this.sucursalSocket.isClosed()){
                message = in.readUTF();

                if(validateMessage(message)){
                    System.out.println(message);
                }
            }
        }catch(IOException e){
            e.printStackTrace();
        }
    }


    private Boolean validateMessage(String message){
        return (message!=null);
    }

}
