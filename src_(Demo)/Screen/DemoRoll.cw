package  {

	import GZ.Gfx.Object;

	import GZ.Sys.Interface.Context;
	import GZ.Gpu.ShaderModel.AtModel.Attribute_Quad;
	import GZ.File.RcImg;
	import GZ.Gfx.Root;

	import GZ.Sys.Interface.Interface;
	import GZ.Gfx.Clip;

	import GZ.Base.Math.Math;
	import GZ.Gfx.Clip.Img;
	
	import Demo.Screen.LigthObj;
	
	import Demo.TestResult;

	/**
	 * @author Maeiky
	 */
	public class DemoRoll extends Clip {
	

		public var oLigthObj : LigthObj;
		
		
		public static var nInterger : Int;
		public  var nTime : Int = 0;
		
		public static var nFloat : Float;
		//public static var sTest : String = "Hello";

		
		public var oImg : Img;

		
		public function DemoRoll( _oParent : Root ):Void {
			Clip(_oParent, 0.0, 0.0);
			
		
			oImg = new Img(this, 400.0, 300.0, "Exe|Rc/Tf.png", true);

			
			Debug.fTrace("--------");
			//oImg.oRc.fCpuLoad();
			if(Context.oItf.bGpuDraw){
				oImg.oRc.fSetGpuTexLayer(Attribute_Quad.oTexture);
				oImg.oRc.fGpuLoad();
			}

			oImg.vPos.fSetSpeed(10);
			oImg.vPos.fSetLimit(99900);
			
			//vPos.fSetSpeed(-100);
		//	vPos.fSetLimit(99900);
			
			
			oImg.vPos.nX = 100;
			oImg.vPos.nY = 250;
			
			
			oImg.vPos.nX.fTo(500);
			
			oImg.vSize.nWidth = 0.5;
			oImg.vSize.nHeight = 0.5;
			


			//oImg.vSize = 0.5;
			
			
			oImg.vSize.nWidth.fTo(1000000.5);
			oImg.vSize.nHeight.fTo(1000000.5);
			oImg.vSize.fSetSpeed(15);
			oImg.vSize.fSetLimit(99900);
			
			
			oImg.vColor.nRed = -1.0;
			
		//	oImg.vRot.nRoll = 15;
			oImg.vColor.nRed.fTo(1.0);
			oImg.vColor.nAlpha = 0.1;
			oImg.vColor.nAlpha.fTo(1.0);
			oImg.vColor.fSetSpeed(5);
			oImg.vColor.fSetLimit(99900);
			
			
	
			oLigthObj = new LigthObj();
			
		}

		override public function fUpdateParentToChild():Void {

			oImg.vRot.nPitch = oImg.vRot.nPitch + 0.005;
			oImg.vRot.nRoll = oImg.vRot.nRoll + 0.008;

			nTime++;
			if(nTime > 250){
				//oImg.vColor.nGreen.fTo(-1.0);
				oImg.vColor.nRed.fTo(0.0);
				oImg.vColor.fSetSpeed(30);
			}
			//!Updated each frame, parents before
			//Debug.fTrace("fUpdateParentToChild ");
	//		oImg.MnRoll(0.005);
			// oImg.WnX(oImg.nAttX + 0.5);
			/*
		<cpp>
		printf("\nAAAAAA");
		</cpp>
			*/
		}


		
		
		
		override public function fUpdateChildToParent():Void {
			//!Updated each frame, childs before
		}


	}
}
