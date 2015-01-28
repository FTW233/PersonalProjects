using UnityEngine;
using System.Collections;
using System.Net ;
using System.Net .Sockets ;
using System.Threading ;

public class socketclient : MonoBehaviour {

	private static byte[] result =new byte[1024];
	IPAddress IP =IPAddress .Parse ("127.0.0.1");//服务器地址
	int myPort =8885;
	Socket clientSocket ;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}
    public void  ClickButton()
    {
		clientSocket =new Socket(AddressFamily .InterNetwork ,SocketType .Stream ,ProtocolType .Tcp );
		try 
		{
			clientSocket .Connect (new IPEndPoint (IP,myPort ));//配置服务器IP与端口
			Debug .Log ("连接服务器成功");
		}
		catch 
		{
			Debug .Log ("连接服务器失败，已退出");
			return ;
		}
		int receiveLength = clientSocket .Receive (result);
		Debug .Log ("接收服务器消息：" + System .Text .Encoding .ASCII .GetString (result, 0, receiveLength));
		//通过clientSocket发送数据
		for (int i=0; i<10; i++)
		{
			try 
			{
				Thread .Sleep (500);
				string sendMessage ="clent send Message Help"+i.ToString ()+" "+System .DateTime .Now  ;
				clientSocket .Send (System .Text .Encoding .ASCII .GetBytes (sendMessage ));
				Debug .Log ("向服务器发送消息:"+i.ToString ()+sendMessage );
			}
			catch 
			{
				clientSocket .Shutdown (SocketShutdown .Both );
				clientSocket .Close ();
				return ;
			}
		}
		Debug .Log ("发送完毕，按回车键退出");

    }
}
