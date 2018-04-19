//# Limit
function TryParseInt(str, defaultValue) {
    var retValue = defaultValue;
    if (str !== null) {
        //undefined !== theHref && theHref.length
        if (str.length > 0) {
            if (!isNaN(str)) {
                retValue = parseInt(str);
            }
        }
    }
    return retValue;
}

function limitKeypress(event, value, maxLength) {
    if (value != undefined && value.toString().length >= maxLength) {
        event.preventDefault();
    }
}

function valitInputMaxNum(input, minNum, maxNum) {

    var _a = TryParseInt(input.val(), 0);

    if ( _a <= minNum && _a <= maxNum) {
        return false;
    } else if (_a > maxNum) {

        input.val(maxNum);
        return false;

    } else if (_a < minNum) {
        input.val(minNum);
        return false;

    }

}
function valitValueMaxNum(value, minNum, maxNum) {

    var _a = TryParseInt(value, 0);

    if (_a <= minNum && _a <= maxNum) {

        return value;

    } else if (_a > maxNum) {

        return maxNum;

    } else if (_a < minNum) {

        return minNum;

    }


    $(function () {
        $('.datepicker').datetimepicker();
        //$('#datetimepicker7').datetimepicker({
        //    useCurrent: false //Important! See issue #1075
        //});
        //$("#datetimepicker6").on("dp.change", function (e) {
        //    $('#datetimepicker7').data("DateTimePicker").minDate(e.date);
        //});
        //$("#datetimepicker7").on("dp.change", function (e) {
        //    $('#datetimepicker6').data("DateTimePicker").maxDate(e.date);
        //});
    });


}

function leftPad(number, targetLength) {
    var output = number + '';
    while (output.length < targetLength) {
        output = '0' + output;
    }
    return output;
}

    function scrollToTop(element) {
        var elmnt = document.getElementById(element);
        elmnt.scrollIntoView(true); // Top
    }

    function scrollToBottom(element) {
        var elmnt = document.getElementById(element);
        elmnt.scrollIntoView(false); // Bottom
    }

function printDiv(DivIdToPrint) {

    var divToPrint = document.getElementById('DivIdToPrint');

    var newWin = window.open('', 'Print-Window');

    newWin.document.open();

    newWin.document.write('<html><body onload="window.print()">' + divToPrint.innerHTML + '</body></html>');

    newWin.document.close();

    setTimeout(function () { newWin.close(); }, 10);

}

function isNumber(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
        return false;
    }
    return true;
}

function form_to_json(selector) {
    var ary = $(selector).serializeArray();
    var obj = {};
    for (var a = 0; a < ary.length; a++) obj[ary[a].name] = ary[a].value;
    return obj;
}
//
//
//Function fechOption
//


function fechOption(dpOBject, _url, id, _jObject, fValue, fDisplay, fOption, fopt) {

    // event.preventDefault();
    // alert();
    var fopt = typeof fopt !== 'undefined' ? fopt : '<option value="0"> --Select-- </option>';
    var _data = {
        "id": id
        , "jObjects": _jObject
        , "fValue": fValue
        , "fDisplay": fDisplay
        , "fOption": fOption
    }

    $.ajax({
        type: "POST",
        url: _url,
        dataType: "json",
        data: JSON.stringify(_data),
        contentType: "application/json; charset=utf-8",
        success: function (data) {
            //alert(data);
            dpOBject.empty();
            var optionhtml1 = fopt;
            dpOBject.append(optionhtml1);
            $.each(data, function (i) {
                var optionhtml = '<option value="' +
                data[i].Value + '">' + data[i].Text + '</option>';
                dpOBject.append(optionhtml);
            });
        }
    });
}
function formatJSONDate(jsonDate) {
    try {
        var MyDate_String_Value = jsonDate;
        var value = new Date
                    (
                         parseInt(MyDate_String_Value.replace(/(^.*\()|([+-].*$)/g, ''))
                    );
        var dat = value.getDate() + 1 + "/" + value.getMonth() + "/" + value.getFullYear();

        return dat;
    }
    catch (err) {
        return false;
        //document.getElementById("demo").innerHTML = err.message;
    }


}
function fechOption(dpOBject, _url, id, _jObject, fValue, fDisplay, fOption, fOrder, OrderType, fopt) {
    // event.preventDefault();
    //alert();
    var fopt = typeof fopt !== 'undefined' ? fopt : '<option value="0"> --Select-- </option>';
    //optionhtml1 = '<option value="0"> --Select-- </option>';

    var _data = {
        "id": id
        , "jObjects": _jObject
        , "fValue": fValue
        , "fDisplay": fDisplay
        , "fOption": fOption
        , "fOrder": fOrder
        , "OrderType": OrderType
    }
    $.ajax({
        type: "POST",
        url: _url,
        dataType: "json",
        data: JSON.stringify(_data),
        contentType: "application/json; charset=utf-8",
        success: function (data) {
            //alert(data);
            var optionhtml1 = fopt;
            dpOBject.empty();
            dpOBject.append(optionhtml1);
            $.each(data, function (i) {
                var optionhtml = '<option value="' +
                data[i].Value + '">' + data[i].Text + '</option>';
                dpOBject.append(optionhtml);
            });
        }
    });

}

function fechOption(dpOBject, _url, id, _jObject, fValue, fDisplay, fOption, fOrder, OrderType, fSelectValue, fopt) {
    // event.preventDefault();
    //alert();
    var fopt = typeof fopt !== 'undefined' ? fopt : '<option value="0"> --Select-- </option>';
    //optionhtml1 = '<option value="0"> --Select-- </option>';

    var _data = {
        "id": id
        , "jObjects": _jObject
        , "fValue": fValue
        , "fDisplay": fDisplay
        , "fOption": fOption
        , "fOrder": fOrder
        , "fSelectValue": fSelectValue
        , "OrderType": OrderType
    }
    $.ajax({
        type: "POST",
        url: _url,
        dataType: "json",
        data: JSON.stringify(_data),
        contentType: "application/json; charset=utf-8",
        success: function (data) {
            //alert(data);
            var optionhtml1 = fopt;
            dpOBject.empty();
            dpOBject.append(optionhtml1);
            $.each(data, function (i) {
                var optionhtml = '<option value="' +
                data[i].Value + '">' + data[i].Text + '</option>';
                dpOBject.append(optionhtml);
            });
        }
    });

}

function fechOptionUserLog(dpOBject, _url, id, _jObject, fValue, fDisplay, fOption, fOrder, OrderType, fopt) {
    // event.preventDefault();
    //alert();
    var fopt = typeof fopt !== 'undefined' ? fopt : '<option value="0"> --Select-- </option>';
    //optionhtml1 = '<option value="0"> --Select-- </option>';

    var _data = {
        "id": id
        , "jObjects": _jObject
        , "fValue": fValue
        , "fDisplay": fDisplay
        , "fOption": fOption
        , "fOrder": fOrder
        , "OrderType": OrderType
    }
    $.ajax({
        type: "POST",
        url: _url,
        dataType: "json",
        data: JSON.stringify(_data),
        contentType: "application/json; charset=utf-8",
        success: function (data) {
            //alert(data);
            var optionhtml1 = fopt;
            dpOBject.empty();
            // dpOBject.append(optionhtml1);
            $.each(data, function (i) {
                var optionhtml = '<option value="' +
                data[i].Value + '">' + data[i].Text + '</option>';
                dpOBject.append(optionhtml);
            });
        }
    });

}

function fechOptionSelected(dpOBject, _url, id, _jObject, fValue, fDisplay, fOption, fOrder, OrderType, vselected, fopt) {
    // event.preventDefault();
    //alert();
    var fopt = typeof fopt !== 'undefined' ? fopt : '<option value="0"> --Select-- </option>';
    var _data = {
        "id": id
        , "jObjects": _jObject
        , "fValue": fValue
        , "fDisplay": fDisplay
        , "fOption": fOption
        , "fOrder": fOrder
        , "OrderType": OrderType
        , "vselected": vselected
    }
    $.ajax({
        type: "POST",
        url: _url,
        dataType: "json",
        data: JSON.stringify(_data),
        contentType: "application/json; charset=utf-8",
        success: function (data) {
            //alert(data);
            dpOBject.empty();
            var optionhtml1 = fopt;
            dpOBject.append(optionhtml1);
            $.each(data, function (i) {
                // alert(data[i].Selected);
                if (data[i].Selected == true) {
                    var optionhtml = '<option value="' + data[i].Value + '" selected >' + data[i].Text + '</option>';
                    //var optionhtml =fopt;
                    dpOBject.append(optionhtml);
                } else {
                    var optionhtml = '<option value="' + data[i].Value + '">' + data[i].Text + '</option>';
                    dpOBject.append(optionhtml);
                }

            });
        }
    });
}

function GetListByKey(_url, id, jObject, fOption, result) {
    // event.preventDefault();
    //alert();

    var _data = {
        "id": id
        , "fObject": jObject
        , "fOption": fOption
    }
    return $.ajax({
        type: "POST",
        url: _url,
        dataType: "json",
        data: JSON.stringify(_data),
        contentType: "application/json; charset=utf-8",
        success: function (data) {
            //alert(data.ORG_Type);
            //result= data;
        }
    });

}

function GetTotalCost(_url, id, jObject, fOption, result) {
    // event.preventDefault();
    alert();

    var _data = {
        "id": id
        , "fObject": "v_listingallproject"
        , "fOption": "PROID"
    }
    return $.ajax({
        type: "POST",
        url: _url,
        dataType: "json",
        data: JSON.stringify(_data),
        contentType: "application/json; charset=utf-8",
        success: function (data) {
            alert(data.TotalCost);
            //result= data;
        }
    });

}

function setCookie(key, value) {
    var expires = new Date();
    expires.setTime(expires.getTime() + (1 * 24 * 60 * 60 * 1000));
    document.cookie = key + '=' + value + ';expires=' + expires.toUTCString();
}

function getCookie(key) {
    var keyValue = document.cookie.match('(^|;) ?' + key + '=([^;]*)(;|$)');
    return keyValue ? keyValue[2] : null;
}
function ToJavaScriptDate(value) {
    var pattern = /Date\(([^)]+)\)/;
    var results = pattern.exec(value);
    var dt = new Date(parseFloat(results[1]));
    return (dt.getMonth() + 1) + "/" + dt.getDate() + "/" + dt.getFullYear();
}
function convertSqlDate(_data) {
    try {
        var date = _data;
        //alert(_data);
        date = date.split("/").reverse().join("-");
        return date;
    }
    catch (err) {
        return false;
        //document.getElementById("demo").innerHTML = err.message;
    }
    return false;
}

function percentage(input) {
    var t = false

    $(input).focus(function () {
        var $this = $(this)

        t = setInterval(

        function () {
            if (($this.val() < 1 || $this.val() > 100) && $this.val().length != 0) {
                if ($this.val() < 1) {
                    $this.val(1)
                }

                if ($this.val() > 10) {
                    $this.val(10)
                }
                $('p').fadeIn(1000, function () {
                    $(this).fadeOut(500)
                })
            }
        }, 50)
    })

    $(input).blur(function () {
        if (t != false) {
            window.clearInterval(t)
            t = false;
        }
    })
}