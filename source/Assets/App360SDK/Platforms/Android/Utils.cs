using System;

namespace App360SDK.Android
{
	public class Utils
	{
		//SCOPED ID LISTENER
		public const string INIT_LISTENER_CLASSNAME = "com.example.app360wrapper.IInitListener";
		public const string SESSION_CALLBACK_CLASSNAME = "com.example.app360wrapper.ISessionListener";
		public const string SCOPED_USER_WRAPPER_CLASSNAME = "com.example.app360wrapper.IScopedUserListener";
		public const string SAVE_LISTENER_CLASSNAME = "com.example.app360wrapper.ISaveListener";

		//PAYMENT LISTENER
		public const string BANK_LISTENER_CLASSNAME = "com.example.app360wrapper.IBankRequestListener";
		public const string SMS_LISTENER_CLASSNAME = "com.example.app360wrapper.ISMSRequestListener";
		public const string CARD_LISTENER_CLASSNAME = "com.example.app360wrapper.ICardRequestListener";
		public const string CHECK_TRANSACTION_LISTENER_CLASSNAME = "com.example.app360wrapper.ICheckTransactionRequestListener";

		// JAVA classes
		public const string APP360_WRAPPER_CLASSNAME = "com.example.app360wrapper.App360SDKWrapper";
		public const string UnityActivityClassName = "com.unity3d.player.UnityPlayer";
	}
}