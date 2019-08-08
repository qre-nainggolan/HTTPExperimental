/* 
	Src: https://developer.mozilla.org/en-US/docs/Web/JavaScript/EventLoop
	Basically, the setTimeout needs to wait for all the codes to complete even 
	though you specified a particular time limit for your setTimeout.
*/


////=========================== Proxy, Here we go =========================== \\\\

// Global object for PQuerik
var PQuerik = {
	message : "PQuerik has been initialized",
	data:{ // Start Building PQuerik "data" Object
		HttpProxyStoreProcedure:function(paramsOriginal){ // Start Building PQuerik HttpProxy Object

			this.response = "";
			this.statusAsynchronous = "yet";
			this.xhrReadyStateAndStatus = "";
			this.xhrLoopCounter = 0; // Will allow to loop until 404 times to check if xhr give response
			this.xhrMaximumLoopNumber = 200; // Will allow to loop until 404 times to check if xhr give response
			this.params = PQuerik.parseArguments(arguments); // Get the parameter inside new PQuerik.data.Store({});

			this.getParamsLength = function(){
				return this.params.length;
			}

			this.paramsLength = this.getParamsLength(); 

			this.createXHR = function(){
				try{ return new XMLHttpRequest(); } catch(e){}
				try{ return new ActiveXObject("Msxml2.XMLHTTP.6.0"); } catch(e){}
				try{ return new ActiveXObject("Msxml2.XMLHTTP.3.0"); } catch(e){}
				try{ return new ActiveXObject("Msxml2.XMLHTTP"); } catch(e){}
				try{ return new ActiveXObject("Microsoft.XMLHTTP"); } catch(e){}
				alert("Unfortunately, PQuerik can't run on your browser cause your browser doesn't support XMLHttpRequest");
				return null;
			}

			var url = (!this.params[0].url) ? "" : this.params[0].url;
			var method = (!this.params[0].method) ? "" : this.params[0].method;
			var parameter = (!this.params[0].parameter) ? "" : this.params[0].parameter;
			var storeProcedureName = (!this.params[0].storeProcedureName) ? "" : "&storeProcedureName=" + this.params[0].storeProcedureName;
			parameter = "parameter=" + parameter + storeProcedureName;
			var flag = false;
				
			this.xhr = this.createXHR();
			this.execute = function(){
				if(this.xhr)
				{
					this.xhr.onreadystatechange = this.statechange.bind(this,this.xhr);
					this.xhr.open("POST",url,true);
					this.xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded; charset=UTF-8");
					this.xhr.send(parameter);
				}
			} 
			
			this.statechange = function(xhr){
				this.xhrReadyStateAndStatus = this.xhr.readyState + " :: " + this.xhr.status;				
				if(this.xhr.readyState == 4 && this.xhr.status == 200){
					this.response = this.xhr.responseText;
					flag = true;
					this.xhrReadyStateAndStatus = this.xhr.readyState + " :: " + this.xhr.status;
					this.statusAsynchronous = "finish";
				}
			}

			this.execute();
			
			this.success = (!paramsOriginal.success) ? function(){console.log("Success");} : paramsOriginal.success;
			this.failure = (!paramsOriginal.failure) ? function(){console.log("Failed");} : paramsOriginal.failure;
			
			var timer;
			this.checkAsynchronousStatus = function(){
				console.log("check asynchronous " + this.statusAsynchronous);
				if(this.statusAsynchronous == "finish"){
					if(flag){
						clearTimeout(timer);
						this.success(flag,this.response);
					}else{
						if(this.xhrLoopCounter >= this.xhrMaximumLoopNumber){
							this.failure(flag,this.response);
						}else{
							this.xhrLoopCounter++;
							timer = setTimeout(this.checkAsynchronousStatus.bind(this), 20);
							console.log("check again and loop counter xhr (" + this.xhrLoopCounter + ")");
						}
					}
				}else{
					if(this.xhrLoopCounter >= this.xhrMaximumLoopNumber){
						this.failure(flag,this.response);
					}else{
						this.xhrLoopCounter++;
						console.log("check again since status is yet and loop counter xhr (" + this.xhrLoopCounter + ")");
						timer = setTimeout(this.checkAsynchronousStatus.bind(this), 20);
					}
				}
			}

			this.checkAsynchronousStatus();

		} // Stop Building PQuerik HttpProxyStoreProcedure Object
	}, // Stop Building PQuerik "data" object
	parseArguments:function(args){
		var cachekey = JSON.stringify(Array.prototype.slice.call(args));
		var params = JSON.parse(cachekey);
		return params;
	},
	onReady:function(obj){
		if(document.getElementById && document.styleSheets){
			setTimeout(obj,5); 
		}
	}
};