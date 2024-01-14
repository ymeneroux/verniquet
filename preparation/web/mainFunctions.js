// ----------------------------------------------------------
// Fichier contenant les fonctions principales du script
// ----------------------------------------------------------



// Variables globales
var tirage;
var nbkc;
var std;

// Accessibilité de save
var save_button = false;

// Answer table
var ANSWER_SHEET;

// Test mode
var mode;

var solution;



// ----------------------------------------------------------
// Fonction de gestion des passages entre cellules
// ----------------------------------------------------------
document.onkeyup = function (e) {
    e = e || window.event;
    
    if ((e.keyCode == 13) || (document.activeElement.value.length >= document.activeElement.maxLength)){
		
		var ncb = document.getElementById("frm1000").elements[0].value;
		var nth = document.getElementById("frm1000").elements[1].value;
		
		focus_element = document.activeElement.id
		split = focus_element.split("_")
		
		if (focus_element.substring(focus_element.length-4, focus_element.length) == "stat"){
			i2 = (parseFloat(split[1]) + 1)
			j  = split[2]
			if (i2 == ncb){
				next_id = "field_0_"+j+"_d_cg"
			} else{
				next_id = "field_"+ i2 + "_" + split[2] + "_stat"
			}
			
			try{
				document.getElementById(next_id).focus();
			} catch(error){
			}
			return
		}

		i = parseFloat(split[1])
		j = parseFloat(split[2])
		k = split[3]
		l = split[4]
		
		i2 = i
		j2 = j
		k2 = k
		l2 = l
		
		if (k == "d"){
			k2 = "m"
		}
		if (k == "m"){
			k2 = "s"
		}
		if (k == "s"){
			k2 = "d"
			i2 = i+1
			if (i2 == ncb){
				i2 = 0
				if (l == "cg"){
					l2 = "cd"
				} else{
					l2 = "cg"
					j2 = j+1
				}
			}
			
		}
		
		next_id = "field_"+i2+"_"+j2+"_"+k2+"_"+l2
	
		try{
			document.getElementById(next_id).focus();
		} catch(error){
		}
	}
};
	

// ----------------------------------------------------------
// Fonction d'affichage des NaN
// ----------------------------------------------------------
function displayNaN(x) {
	if (!isNaN(x)){
		return x
	} else {
		return "&nbsp &nbsp &nbsp &nbsp &nbsp"
	}
}

// ----------------------------------------------------------
// Fonctions d'affichage des champs d'observation
// Sortie : (void) remplissage de la balise "frm"
// ----------------------------------------------------------
function firstButton() {
	
    var x = document.getElementById("frm1000");
    var nb = x.elements[0].value;
	
	var x2 = document.getElementById("frm1000");
    var nb2 = x2.elements[1].value;
    
    var disp_sec = document.getElementById("frm1000").elements[8].checked
	
	/*
	var ex_values = [
	["IMBM", "000", "07", "30", "180", "07", "17", "044", "59", "56", "224", "59", "33", "090", "10", "46", "270", "10", "52", "135", "04", "15", "315", "03", "40"], 
	["GLOB", "358", "35", "45", "178", "35", "25", "043", "28", "13", "223", "27", "51", "088", "38", "53", "268", "39", "08", "133", "32", "32", "313", "31", "58"], 
	["CDTN", "003", "54", "53", "183", "54", "42", "048", "47", "34", "228", "47", "04", "093", "58", "17", "273", "58", "27", "138", "51", "42", "318", "51", "04"], 
	["VDGC", "004", "31", "41", "184", "31", "18", "049", "24", "16", "229", "23", "40", "094", "34", "53", "274", "35", "05", "139", "28", "30", "319", "27", "45"], 
	["PTHN", "008", "34", "33", "188", "34", "12", "053", "26", "57", "233", "26", "32", "098", "38", "07", "278", "37", "51", "143", "31", "18", "323", "30", "37"], 
	["SEDM", "008", "48", "53", "188", "48", "32", "053", "41", "12", "233", "40", "51", "098", "52", "24", "278", "52", "03", "143", "44", "58", "323", "44", "48"], 
	["SRBN", "010", "35", "01", "190", "34", "40", "055", "27", "26", "235", "26", "58", "100", "38", "32", "280", "38", "16", "145", "31", "44", "325", "30", "57"], 
	["TFLE", "018", "00", "44", "198", "00", "11", "062", "53", "13", "242", "52", "38", "108", "04", "19", "288", "04", "06", "152", "57", "27", "332", "56", "52"], 
	];
	*/

	var formulaire = '<div id="formulaire_angles"> </br>';
	var readonly = "" 
	for (j=0; j<nb2; j++){
		if (j > 0){
			readonly = " readonly"
		}
		formulaire += 'Tour d\'horizon #' + (j+1)
		formulaire += ' :</br></br>'
	
		for (i=0; i<nb; i++){
			
			/*
			formulaire += 'Cible : <input type="text" size="4" name="field_i" id="field_'+i+"_"+j+'_stat" value="'+ ex_values[i][0] +'" '+readonly+'> &nbsp &nbsp &nbsp &nbsp &nbsp';
			formulaire += 'CG :  &nbsp'
			formulaire += '<input title="?" type="text" size="3" name="field_i" id="field_'+i+"_"+j+'_d_cg" value="'+ ex_values[i][6*j+1] +'">  ° &nbsp &nbsp';
			formulaire += '<input title="?" type="text" size="2" name="field_i" id="field_'+i+"_"+j+'_m_cg" value="'+ ex_values[i][6*j+2] +'"> \' &nbsp &nbsp';
			formulaire += '<input title="?" type="text" size="2" name="field_i" id="field_'+i+"_"+j+'_s_cg" value="'+ ex_values[i][6*j+3] +'">  " &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp';
			formulaire += 'CD :  &nbsp'
			formulaire += '<input title="?" type="text" size="3" name="field_i" id="field_'+i+"_"+j+'_d_cd" value="'+ ex_values[i][6*j+4] +'">  ° &nbsp &nbsp';
			formulaire += '<input title="?" type="text" size="2" name="field_i" id="field_'+i+"_"+j+'_m_cd" value="'+ ex_values[i][6*j+5] +'"> \' &nbsp &nbsp';
			formulaire += '<input title="?" type="text" size="2" name="field_i" id="field_'+i+"_"+j+'_s_cd" value="'+ ex_values[i][6*j+6] +'">  " &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp';
			formulaire += "</br></br>"
			*/
			
			formulaire += 'Cible : <input type="text" maxlength="100" size="4" name="field_i" id="field_'+i+"_"+j+'_stat" '+readonly+'> &nbsp &nbsp &nbsp &nbsp &nbsp';
			formulaire += 'CG :  &nbsp'
			formulaire += '<input type="text" maxlength="3" size="3" name="field_i" id="field_'+i+"_"+j+'_d_cg">  ° &nbsp &nbsp';
			formulaire += '<input type="text" maxlength="2" size="2" name="field_i" id="field_'+i+"_"+j+'_m_cg"> \' &nbsp &nbsp';
			formulaire += '<input type="text" maxlength="2" size="2" name="field_i" id="field_'+i+"_"+j+'_s_cg">  " &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp';
			formulaire += 'CD :  &nbsp'
			formulaire += '<input type="text" maxlength="3" size="3" name="field_i" id="field_'+i+"_"+j+'_d_cd">  ° &nbsp &nbsp';
			formulaire += '<input type="text" maxlength="2" size="2" name="field_i" id="field_'+i+"_"+j+'_m_cd"> \' &nbsp &nbsp';
			formulaire += '<input type="text" maxlength="2" size="2" name="field_i" id="field_'+i+"_"+j+'_s_cd">  " &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp';
			formulaire += "</br></br>"
			
			
		}
		formulaire += '<div class=\"buttons\"><a href="#" class="button back" onclick="secondButton()">SUBMIT</a><a href="#" class="button back" onclick="submitAndSave()">SUBMIT & SAVE</a></div>';
		formulaire += '<div id="suggestion_'+j+'"></div>';
		formulaire += "</br></br>"
		formulaire += "</br></br>"
	}
	

	//formulaire += '<div class=\"buttons\"><a href="#" class="button start" onclick="secondButton()">SUBMIT</a></div>';
	
	formulaire += '</div>';
	
	
	document.getElementById("frm").innerHTML = formulaire;


/*	
const file = new File(['foo'], 'note.txt', {
  type: 'text/plain',
}) */
	

		$(document).ready(function (){
					
			// ---------------------------------------------------------
			// Modifications noms de station
			// ---------------------------------------------------------
			$('#formulaire_angles').keyup(function (e) {
				for (var j=0; j<nb; j++){
					var txtVal = $('#field_'+j+'_'+0+'_stat').val();
					for (var i=0; i<nb2; i++){
						$('#field_'+j+'_'+i+'_stat').val(txtVal);
					}
				}
			});
			
			
			// ---------------------------------------------------------
			// Modifications prédictions des angles
			// ---------------------------------------------------------
	
			$('#formulaire_angles').keyup(function (e) {
				
				for (var i=1; i<nb; i++){
					for (var j=1; j<nb2; j++){
						$('#field_'+j+'_'+i+'_d_cg').attr('title', "?");
						$('#field_'+j+'_'+i+'_m_cg').attr('title', "?");
						$('#field_'+j+'_'+i+'_s_cg').attr('title', "?");
						$('#field_'+j+'_'+i+'_d_cd').attr('title', "?");
						$('#field_'+j+'_'+i+'_m_cd').attr('title', "?");
						$('#field_'+j+'_'+i+'_s_cd').attr('title', "?");
					}
				}
				
				
				vd1 = parseFloat($('#field_'+0+'_'+0+'_d_'+'cg').val())
				vm1 = parseFloat($('#field_'+0+'_'+0+'_m_'+'cg').val())
				vs1 = parseFloat($('#field_'+0+'_'+0+'_s_'+'cg').val())
				
				for (var i=1; i<nb2; i++){
					v1 = vd1 + vm1/60.0 + vs1/3600.0
					valeur = (v1 + i*180.0/nb2) % 360 + 0.5/3600.0
					deg = Math.floor(valeur);
					min = Math.floor(60*(valeur-deg))
					sec = Math.floor(60*(60*(valeur-deg)-min))
					if (!isNaN(deg)){
						chaine = "Décalage de limbe : ~ " + deg + "° "
						$('#field_'+0+'_'+i+'_d_cg').attr('title', chaine);
						$('#field_'+0+'_'+i+'_m_cg').attr('title', chaine);
						$('#field_'+0+'_'+i+'_s_cg').attr('title', chaine);
					}
				}
		
				CC = ["cg", "cd"]
				for (var i=0; i<nb2; i++){
					for (var j=0; j<nb; j++){
						for (var k=0; k<2; k++){ 
							value_d = (parseFloat($('#field_'+j+'_'+i+'_d_'+CC[k]).val()) + 180) % 360
							value_m = (parseFloat($('#field_'+j+'_'+i+'_m_'+CC[k]).val()))
							value_s = (parseFloat($('#field_'+j+'_'+i+'_s_'+CC[k]).val()))
							if (!isNaN(value_d) && !isNaN(value_m)){
								chaine = "Prédiction par "+CC[k].toUpperCase() +" : "+value_d + "° " + value_m + "'"
								if (disp_sec){
									chaine += " " + value_s + "''"
								}
								$('#field_'+j+'_'+i+'_d_'+CC[1-k]).attr('title', chaine);
								$('#field_'+j+'_'+i+'_m_'+CC[1-k]).attr('title', chaine);
								$('#field_'+j+'_'+i+'_s_'+CC[1-k]).attr('title', chaine);
							}
						}
					}
				}
				
				for (var i=1; i<nb2; i++){
					for (var j=1; j<nb; j++){
						vd1 = parseFloat($('#field_'+0+'_'+0+'_d_'+'cg').val())
						vm1 = parseFloat($('#field_'+0+'_'+0+'_m_'+'cg').val())
						vs1 = parseFloat($('#field_'+0+'_'+0+'_s_'+'cg').val())
						vd2 = parseFloat($('#field_'+j+'_'+0+'_d_'+'cg').val())
						vm2 = parseFloat($('#field_'+j+'_'+0+'_m_'+'cg').val())
						vs2 = parseFloat($('#field_'+j+'_'+0+'_s_'+'cg').val())
						vd3 = parseFloat($('#field_'+0+'_'+i+'_d_'+'cg').val())
						vm3 = parseFloat($('#field_'+0+'_'+i+'_m_'+'cg').val())
						vs3 = parseFloat($('#field_'+0+'_'+i+'_s_'+'cg').val())
						v1 = vd1 + vm1/60.0 + vs1/3600.0
						v2 = vd2 + vm2/60.0 + vs2/3600.0
						v3 = vd3 + vm3/60.0 + vs3/3600.0
						valeur = (v2 - v1 + v3) % 360 + 0.5/3600.0
						deg = Math.floor(valeur);
						min = Math.floor(60*(valeur-deg))
						sec = Math.floor(60*(60*(valeur-deg)-min))
						if (!isNaN(deg+min)){
							chaine = "Prédiction par TH1 : " + deg + "° " + min +"'"
							if (disp_sec){
								chaine += " " + sec + "''"
							}
							$('#field_'+j+'_'+i+'_d_'+'cg').attr('title', chaine);
							$('#field_'+j+'_'+i+'_m_'+'cg').attr('title', chaine);
							$('#field_'+j+'_'+i+'_s_'+'cg').attr('title', chaine);
						}
					}
				}
		
			});
			
			
			
			spaces  = "&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp"
			spaces += "&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp"
			spaces += "&nbsp &nbsp &nbsp &nbsp"
			
				$('#formulaire_angles').keyup(function (e) {
					
					var tolerance_cg_cd = document.getElementById("frm1000").elements[5].value
					
					let activeElement = document.activeElement;
					
					color = "green"
					field_d = activeElement.id.substring(0, 10) + "d_"+activeElement.id.substring(12, 14); d = parseFloat($('#'+field_d).val())
					field_m = activeElement.id.substring(0, 10) + "m_"+activeElement.id.substring(12, 14); m = parseFloat($('#'+field_m).val())
					field_s = activeElement.id.substring(0, 10) + "s_"+activeElement.id.substring(12, 14); s = parseFloat($('#'+field_s).val())
					input_value = d + m/60.0 + s/3600.0
					
					prediction = $('#'+activeElement.id).attr('title')

					if (prediction === undefined){
						for (var i=0; i<nb2; i++){
							$('#suggestion_'+i).html("")
						}
					}
					
					tab = prediction.split(":")[1]
					d = parseFloat(tab.split("°")[0])
					m = parseFloat(tab.split("°")[1].split("'")[0])
					s = parseFloat(tab.split("°")[1].split("'")[1])
					predicted_value = d+m/60.0+s/3600.0
					
					if (Math.abs(predicted_value-input_value) > tolerance_cg_cd){
						color = "red"
					}
					
					if (isNaN(input_value)){
						color = 'black'
					}
	
					
					for (var i=0; i<nb2; i++){
						$('#suggestion_'+i).html(spaces + "<a style=\"color:"+color+";\"><small><i>" + prediction + "</i></small></a>")
					}
				});
				
				
				$('#formulaire_angles').click(function (e) {
					
					var tolerance_cg_cd = document.getElementById("frm1000").elements[5].value
					
					let activeElement = document.activeElement;
					
					color = "green"
					field_d = activeElement.id.substring(0, 10) + "d_"+activeElement.id.substring(12, 14); d = parseFloat($('#'+field_d).val())
					field_m = activeElement.id.substring(0, 10) + "m_"+activeElement.id.substring(12, 14); m = parseFloat($('#'+field_m).val())
					field_s = activeElement.id.substring(0, 10) + "s_"+activeElement.id.substring(12, 14); s = parseFloat($('#'+field_s).val())
					input_value = d + m/60.0 + s/3600.0
					
					prediction = $('#'+activeElement.id).attr('title')
					tab = prediction.split(":")[1]
					d = parseFloat(tab.split("°")[0])
					m = parseFloat(tab.split("°")[1].split("'")[0])
					s = parseFloat(tab.split("°")[1].split("'")[1])
					predicted_value = d+m/60.0+s/3600.0
					
					if (Math.abs(predicted_value-input_value) > tolerance_cg_cd){
						color = "red"
					}
					
					
					
					if (isNaN(input_value)){
						color = 'black'
					}
					
					
					
					if (prediction === undefined){
						prediction = ""
					}
					for (var i=0; i<nb2; i++){
						$('#suggestion_'+i).html(spaces + "<a style=\"color:"+color+";\"><small><i>" + prediction + "</i></small></a>")
					}
				});
				
		});
	
	return
}




// ----------------------------------------------------------
// Fonctions d'impression d'une matrice
// ----------------------------------------------------------
function printMatrix(matrix){
	var solution = '<table>';
	for (i=1; i<=matrix.rows(); i++){
		solution += '<tr>';
		for (j=1; j<=matrix.cols(); j++){
			solution += '<td align="right">';
			solution += '&nbsp &nbsp' + matrix.e(i,j) + '&nbsp &nbsp';
			solution += '</td>';
		}	
		solution += '</tr>';
	}
	solution += '</table>';
	return solution;
}


// ----------------------------------------------------------
// Fonctions de envoi du texte dans le formulaire
// ----------------------------------------------------------
function back_text_area(){
	
	chaine = document.getElementById("ta").value
	lines = chaine.split("\n")
	while(lines[lines.length-1] == ""){
		lines.pop()
	}
	
	// lines.pop()
	
	ncb = lines.length;                                   // Nombre de cibles 
	nth = Math.floor((lines[0].split(" ")).length/6);     // Nombre de tours d'horizon
	
	document.getElementById("frm1000").elements[0].value = ncb
	document.getElementById("frm1000").elements[1].value = nth
	firstButton()
	
	for (var i=0; i<ncb; i++){
		line = lines[i].split(" ")
		nth = Math.floor(line.length/6)
		for (var j=0; j<nth; j++){
			document.getElementById("field_"+i+"_"+j+"_stat").value = line[0]
			document.getElementById("field_"+i+"_"+j+"_d_cg").value = line[1+6*j+0]
			document.getElementById("field_"+i+"_"+j+"_m_cg").value = line[1+6*j+1]
			document.getElementById("field_"+i+"_"+j+"_s_cg").value = line[1+6*j+2]
			document.getElementById("field_"+i+"_"+j+"_d_cd").value = line[1+6*j+3]
			document.getElementById("field_"+i+"_"+j+"_m_cd").value = line[1+6*j+4]
			document.getElementById("field_"+i+"_"+j+"_s_cd").value = line[1+6*j+5]
		}
	}
	
}

// ----------------------------------------------------------
// Fonctions de sauvegarde des mesures
// ----------------------------------------------------------
function save_text_area(){
   
  const myBlob = new Blob([document.getElementById("ta").value], {
    type: "text/plain"
  });

  const url = window.URL.createObjectURL(myBlob);
  const anchor = document.createElement("a");
  document.body.appendChild(anchor);
  anchor.href = url;
  anchor.download = document.getElementById("frm1000").elements[4].value+".txt";

  anchor.click();
  window.URL.revokeObjectURL(url);
  anchor.remove();
  
}


// ----------------------------------------------------------
// Fonctions de réduction des observations
// ----------------------------------------------------------
function reduction(){
	
	
	// Paramètres de tolérance
	var tolerance_cg_cd            = document.getElementById("frm1000").elements[5].value
	var tolerance_cg_cd_per_target = document.getElementById("frm1000").elements[6].value
	var tolerance_cg_cd_per_circle = document.getElementById("frm1000").elements[7].value

	
	text_area = '</br></br>'
	
	chaine = document.getElementById("ta").value
	
	lines = chaine.split("\n")
	while(lines[lines.length-1] == ""){
		lines.pop()
	}
	
	//lines.pop()
	
	ncb = lines.length;   // Nombre de cibles 
	nth = 0;              // Nombre de tours d'horizon
	
	
	
	output = ""
	
	let CG  = new Array(ncb);
	let CD  = new Array(ncb);
	let CM  = new Array(ncb);
	let NOM = new Array(ncb);
	
	for (var i=0; i<ncb; i++){
		line = lines[i].split(" ")
		nth = Math.floor(line.length/6)
		CG[i]  = new Array(nth)
		CD[i]  = new Array(nth)
		CM[i]  = new Array(nth)
		NOM[i] = line[0]
		for (var j=0; j<nth; j++){
			CG[i][j] = parseFloat(line[1+6*j+0]) + parseFloat(line[1+6*j+1])/60.0 + parseFloat(line[1+6*j+2])/3600.0
			CD[i][j] = parseFloat(line[1+6*j+3]) + parseFloat(line[1+6*j+4])/60.0 + parseFloat(line[1+6*j+5])/3600.0
			if (CD[i][j] < CG[i][j]){
				CM[i][j] = (CG[i][j] + CD[i][j] + 180)/2
			} else { 
				CM[i][j] = (CG[i][j] + CD[i][j] - 180)/2
			}
		}
	}
	
	
	// -----------------------------------------------------------------
	// Contrôle des fermetures CG/CD
	// -----------------------------------------------------------------
	output  = "</br></br></br></br><b>Contrôle des fermetures CG/CD (en °):</b></br></br><table>"
	output += "<tr><td>   </td>"
	nb_controles_incoherents = 0
	incoherences = ""
	std_total = 0
	STD_PAR_TOUR = new Array(nth)
	M1_PAR_TOUR  = new Array(nth)
	M2_PAR_TOUR  = new Array(nth)
	for (var i=0; i<nth; i++){
		output += "<td> &nbsp TH #"+(i+1)+" </td>"
		STD_PAR_TOUR[i] = 0
		M1_PAR_TOUR[i]  = 0
		M2_PAR_TOUR[i]  = 0
	}
	output += "<td> &nbsp RMSE </td></tr>"
	for (var i=0; i<ncb; i++){
		output += "<tr>"
		output += "<td>" + NOM[i]+"&nbsp &nbsp" + "</td>"
		var m1 = 0;
		var m2 = 0;
		for (var j=0; j<nth; j++){
			control = CG[i][j]-CD[i][j] + 180
			if (control >= 180){
				control -= 360
			}

			if (!isNaN(control)){
				m2              += control*control
				STD_PAR_TOUR[j] += control*control
				M1_PAR_TOUR[j]  += control
				M2_PAR_TOUR[j]  += control*control
				STD_PAR_TOUR[j] += control*control
				std_total       += control*control
			}
			
			output += "<td>"
			before = ""; after  = ""
			if (Math.abs(control) > tolerance_cg_cd){
				before = "<b>"
				after = "</b>"
				nb_controles_incoherents ++;
				incoherences += "&nbsp &nbsp  -" + NOM[i] + " / Tour #" + (j+1) + "</br>" 
			}
			if (control >= 0){
				output += "+"
			}
			output += before + displayNaN(control.toFixed(4)) + after + "&nbsp &nbsp"
			output += "</td>"
			
		}
		std_par_cible = Math.sqrt(m2/nth)
		before = ""; after  = ""
		if (std_par_cible > tolerance_cg_cd_per_target){
			before = "<b>"
			after = "</b>"
		}
		output += "<td>+" + before + std_par_cible.toFixed(4) + after + "&nbsp &nbsp" + "</td>"
		output += "</tr>"
	}
	output += "<tr><td>STD.</td>"
	for (var i=0; i<nth; i++){
		var m1 = M1_PAR_TOUR[i]/ncb
		var m2 = M2_PAR_TOUR[i]/ncb
		std_par_tour = Math.sqrt(m2-m1*m1)
		before = ""; after  = ""
		if (std_par_tour > tolerance_cg_cd_per_circle){
			before = "<b>"
			after = "</b>"
		}
		output += "<td>+"+ before + std_par_tour.toFixed(4) + after +"</td>"
	}
	std_total = Math.sqrt(std_total/(ncb*nth))
	output += "<td>"+""+"</td></tr></table></br>"
	
	
	if (nb_controles_incoherents > 0){
		output += "<b>Attention : </b>" + nb_controles_incoherents + " contrôle(s) CG/CD incohérent(s) !</br>"
		output += incoherences	
	} else{
		output += "Contrôles par lecture CG/CD validés !</br>"	
	}
	output += "</br>RMSE total : "+std_total.toFixed(4) + "°"
	
	output += "</br>"
	
	// -----------------------------------------------------------------
	// Moyennage des angles
	// -----------------------------------------------------------------
	AVG_SAVED = new Array(ncb)
	STD_SAVED = new Array(ncb)
	NTH_SAVED = new Array(ncb)
	
	var ref_nom = document.getElementById("frm1000").elements[3].value;
	var ref = 0
	if (ref_nom != ""){
		for (var i=0; i<ncb; i++){
			if (ref_nom == NOM[i]){
				ref = i
			}
		}
	}
	output += "</br></br></br><b>Angles moyens (en °):</b></br></br>"
	output += "<table>"
	output += "<tr><td>   </td>"
	for (var i=0; i<nth; i++){
		output += "&nbsp &nbsp <td align=right> &nbsp TH #"+(i+1)+"&nbsp</td>"
	}
	output += "<td align=right> &nbsp &nbsp MEAN &nbsp </td><td align=right> &nbsp &nbsp STD &nbsp</td>"
	output += "</tr>"
	for (var i=0; i<ncb; i++){
		output += "<tr><td align=right>" + NOM[i] + "&nbsp &nbsp</td>" 
		var m1 = 0
		var m2 = 0
		var na = 0
		for (var j=0; j<nth; j++){
			angle = CM[i][j]-CM[ref][j]
			if (angle > 180){
				angle -= 360
			}
			if (angle < -180){
				angle += 360
			}
			if (!isNaN(angle)){
				m1 += angle
				m2 += angle*angle
				na += 1
			}
			output += "<td align=right>" 
			output += displayNaN(angle.toFixed(4)) + "&nbsp </td>"
		}
		m1 /= na
		m2 /= na
		std = Math.sqrt(m2-m1*m1)
		output += "<td align=right>" + displayNaN(m1.toFixed(4)) + "</td>"
		output += "<td align=right>" + displayNaN(std.toFixed(4)) + "</td>"
		output += "</tr>"
		AVG_SAVED[i] = m1
		STD_SAVED[i] = std/Math.sqrt(na)
		NTH_SAVED[i] = na
	}
	output += "</tr></table></br>"
	
	
	// -----------------------------------------------------------------
	// Observations Comp
	// -----------------------------------------------------------------
	var stat_nom = document.getElementById("frm1000").elements[2].value;
	output += "</br></br></br><b>Observations Comp3D (en gon):</b></br></br>"
	
	
	output += "<table>"
	output += "<tr><td align=right>7&nbsp</td><td align=right>"+stat_nom+"&nbsp</td><td align=right>"+NOM[ref]+"&nbsp</td>"
	output += "<td align=right>0.0000&nbsp</td><td align=right>0.00060&nbsp</td></tr>"
	for (var i=0; i<ncb; i++){
		if (i == ref){
			continue
		}
		if (isNaN(AVG_SAVED[i])){
			continue
		}
		output += "<tr><td align=right>5&nbsp</td><td align=right>"+stat_nom+"&nbsp</td><td align=right>"+NOM[i]+ "&nbsp</td>"
		output += "<td align=right>"+((10/9)*AVG_SAVED[i]).toFixed(4)+"&nbsp</td><td align=right>"+((10/9)*STD_SAVED[i]).toFixed(5)+"&nbsp</td></tr>"
	}
	output += "</tr></table></br>"
	
	
	// -----------------------------------------------------------------
	// Angles observés depuis la référence
	// -----------------------------------------------------------------
	output += "</br></br></br><b>Angles observés depuis "+NOM[ref]+":</b></br></br>"
	output += "<table>"
	for (var i=0; i<ncb; i++){
		if (i == ref){
			continue
		}
		if (isNaN(AVG_SAVED[i])){
			continue
		}
		if (AVG_SAVED[i] < 0){
			AVG_SAVED[i] += 360
		}
		deg = Math.floor(AVG_SAVED[i]); 
		min = Math.floor(60*(AVG_SAVED[i]-deg))
		sec = Math.floor(600*(60*(AVG_SAVED[i]-deg)-min))/10
		output += "<tr><td align=right>"+NOM[i]+ "&nbsp&nbsp</td>"
		output += "<td align=right>"+deg+"°&nbsp</td><td align=right>"+min+"'&nbsp</td><td align=right>"+sec+"\"&nbsp</td>"
		output += "<td align=right> &nbsp +/- &nbsp </td><td align=right>"+(STD_SAVED[i]*3600).toFixed(1)+"\"</td>"
		relatif = (STD_SAVED[i]*3.14159/180*1000*1e2).toFixed(1)+" cm/km"
		if (NTH_SAVED[i] == 1){
			relatif = "?"
		}
		output += "<td align=right>&nbsp &nbsp &nbsp ["+relatif+"]</td>" 
		output += "</tr>"
	}
	output += "</tr></table></br>"
	
	// -----------------------------------------------------------------
	// Affichage des résultats
	// -----------------------------------------------------------------
	
	document.getElementById("out").innerHTML = output + '</br></br></br></br></br></br></br>';
	
	// -----------------------------------------------------------------
	// Envoi sur la balise des résultats
	// -----------------------------------------------------------------
	// ???
	
}

// ----------------------------------------------------------
// Fonctions de calcul de la solution
// Sortie : (void) remplissage du champ texte et sauvegarde
// ----------------------------------------------------------
function submitAndSave(){
	secondButton()
	save_text_area()
}

// ----------------------------------------------------------
// Fonctions de calcul de la solution
// Sortie : (void) remplissage champ texte
// ----------------------------------------------------------
function secondButton() {
	
    var nb  = document.getElementById("frm1000").elements[0].value;
    var nb2 = document.getElementById("frm1000").elements[1].value;
    
	
	text_area = '</br></br><textarea id="ta" rows = "5" cols = "130" name = "description">'
	for (j=0; j<nb; j++){
			text_area += document.getElementById("field_"+j+"_"+0+"_stat").value + ' ';
		for (i=0; i<nb2; i++){
			text_area += document.getElementById("field_"+j+"_"+i+"_d_cg").value + ' ';
			text_area += document.getElementById("field_"+j+"_"+i+"_m_cg").value + ' ';
			text_area += document.getElementById("field_"+j+"_"+i+"_s_cg").value + ' ';
			text_area += document.getElementById("field_"+j+"_"+i+"_d_cd").value + ' ';
			text_area += document.getElementById("field_"+j+"_"+i+"_m_cd").value + ' ';
			text_area += document.getElementById("field_"+j+"_"+i+"_s_cd").value + ' ';
			
		}
		text_area += '\n'
	}
	
	
	text_area += '</textarea><br></br>'
	
	/*
	text_area += '<div class=\"buttons\"><a href="#" class="button start" onclick="reduction()">REDUCTION</a>';
	text_area += '<a href="#" class="button start" onclick="save_text_area()">SAVE</a></div>';
	text_area += '<a href="#" class="button start" onclick="back_text_area()">RETOUR</a></div>';
	text_area +=  '</br> </br>'
	*/
	
	document.getElementById("sol").innerHTML = text_area;
	
	return;
	
	
}
	
	
// ----------------------------------------------------------
// Fonctions d'affichage des détails
// Sortie : (void) remplissage de la balise "details"
// ----------------------------------------------------------
function thirdButton() {
	document.getElementById("details").innerHTML = solution;
	return;
}
