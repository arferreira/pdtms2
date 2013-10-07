void 0 == window.jQuery && alert("dzstabs.js -> jQuery is not defined or improperly declared ( must be included at the start of the head tag ), you need jQuery for this plugin");
var settings_dzscalendar = {
    animation_time: 500,
    animation_easing: "swing"
};

function is_ie8() {
    return void 0 == jQuery.browser.msie ? !1 : 8 < jQuery.browser.version ? !1 : !0
}(function (p) {
    p.fn.dzscalendar = function (e) {
        e = p.extend({
            settings_slideshowTime: "5",
            settings_autoHeight: "on",
            settings_skin: "skin-default",
            start_month: "",
            start_year: ""
        }, e);
        this.each(function () {
            function p() {
                d.find(".dzstooltip").each(function () {
                    var c = jQuery(this);
                    c.removeClass("currTooltip");
                    c.animate({
                        opacity: 0,
                        left: l + 50
                    }, {
                        queue: !1,
                        complete: D,
                        duration: settings_dzscalendar.animation_time,
                        easing: settings_dzscalendar.animation_easing
                    })
                })
            }
            function D() {
                d.find(".dzstooltip").each(function () {
                    var c = jQuery(this);
                    !1 == c.hasClass("currTooltip") && c.remove()
                })
            }
            function x(c, d) {
                var f = new Date;
                if (!0 != t) {
                    t = !0;
                    f.setYear(c);
                    f.setMonth(d);
                    f.setDate(1);
                    p();
                    var e = d + 1,
                        l = c;
                    12 == e && (e = 0, l++);
                    var a = "<tr>",
                        q = f.getDay();
                    for (b = f = 0; b < q; b++) {
                        var a = a + '<td class="other-months-date',
                            r = new Date(c, d, b + 2);
                        r < h && (a += " past-date");
                        a += '"';
                        a += ">";
                        a += (new Date(c, d, 0)).getDate() - q + b + 1;
                        a += "</td>";
                        f++
                    }
                    for (b = 0; b < (new Date(l, e, 0)).getDate(); b++) {
                        a += '<td class="curr-months-date';
                        r = new Date(c, d, b + 2);
                        r < h && (a += " past-date");
                        q = d + 1 + "-" + (b + 1) + "-" + c;
                        for (u = 0; u < m.length; u++) m[u].date == q && (a += " hasEvent");
                        a += '"';
                        a += ' data-date="' + q + '"';
                        a += ">";
                        a += b + 1;
                        a += "</td>";
                        6 == f && (a += "</tr>", a += "<tr>", f = -1);
                        f++
                    }
                    if (0 < f) for (b = 0; 7 > f; b++) a += '<td class="other-months-date', r = new Date(c, d, b + 2), r < h && (a += " past-date"), a += '"', a += ">", a += b + 1, a += "</td>", f++;
                    a += "</tr>";
                    0 < i.children().length ? (i.children().eq(0).removeClass("argTable"), i.children().eq(0).addClass("currTable"), c > g ? v = !0 : c < g ? v = !1 : c == g && (v = d < j ? !1 : !0)) : t = !1;
                    g = c;
                    j = d;
                    y.children(".curr-month").html(A[j]);
                    y.children(".curr-year").html(g);
                    i.append('<table class="argTable"><thead><tr><td>S</td><td>M</td><td>T</td><td>W</td><td>T</td><td>F</td><td>S</td></tr><tbody>' + a + "</tbody></table>");
                    if (1 != i.children().length && (s = i.children(".currTable"), k = i.children(".argTable"), s.css({
                        top: 0,
                        left: 0
                    }), !0 == v ? (s.animate({
                        top: 0,
                        left: -(w + 10)
                    }, {
                        queue: !1,
                        complete: B,
                        duration: settings_dzscalendar.animation_time,
                        easing: settings_dzscalendar.animation_easing
                    }), k.css({
                        top: 0,
                        left: w + 10
                    })) : (s.animate({
                        top: 0,
                        left: w + 10
                    }, {
                        queue: !1,
                        complete: B,
                        duration: settings_dzscalendar.animation_time,
                        easing: settings_dzscalendar.animation_easing
                    }), k.css({
                        top: 0,
                        left: -(w + 10)
                    })), k.animate({
                        top: 0,
                        left: 0
                    }, {
                        queue: !1,
                        duration: settings_dzscalendar.animation_time,
                        easing: settings_dzscalendar.animation_easing
                    }), !is_ie8())) {
                        for (b = k.find("tbody").find("tr").length; - 1 < b; b--) n = k.find("tbody").find("tr").eq(b), n.css({
                            opacity: 0
                        }), e = 3 * settings_dzscalendar.animation_time / (k.find("tbody").find("tr").length - b + 1), n.delay(settings_dzscalendar.animation_time / 2).animate({
                            opacity: 1
                        }, {
                            queue: !0,
                            duration: e,
                            easing: settings_dzscalendar.animation_easing
                        });
                        for (b = k.find("tbody").find("tr").length; - 1 < b;) break
                    }
                }
            }
            function B() {
                s.remove();
                t = !1
            }
            var d = jQuery(this);
            d.children();
            var j = 0,
                g = 0,
                s, k, t = !1,
                v = !1,
                n, w = 182;
            parseInt(e.settings_slideshowTime);
            var b = 0,
                u = 0,
                z = 0,
                i, y, m = [],
                h, l, C, A = "Janeiro Fevereiro Março Abril Maio Junho Julho Agosto Setembro Outubro Novembro Dezembro".split(" ");
            d.addClass(e.settings_skin);
            h = new Date;
            for (b = 0; b < d.children(".events").children().length; b++) n = d.children(".events").children().eq(b), m[b] = {
                date: n.attr("data-date"),
                content: n.html()
            };
            d.children(".events").remove();
            d.append('<div class="calendar-controls"><div class="arrow-left"></div><div class="curr-date"><span class="curr-month">' + A[h.getMonth()] + '</span><span class="curr-year">' + h.getFullYear() + '</span></div><div class="arrow-right"></div></div>');
            d.append('<div class="theMonths"></div>');
            y = d.find(".curr-date");
            i = d.children(".theMonths");
            d.find(".arrow-left").click(function () {
                var c = j - 1,
                    b = g; - 1 == c && (c = 11, b--);
                x(b, c)
            });
            d.find(".arrow-right").click(function () {
                var c = j + 1,
                    b = g;
                12 == c && (c = 0, b++);
                x(b, c)
            });
            d.find(".hasEvent").live("click", function () {
                var c = jQuery(this);
                p();
                if (c.hasClass("openTooltip")) c.removeClass("openTooltip");
                else {
                    var e = c.attr("data-date"),
                        f = c.parent().parent().parent().parent().parent();
                    d.find(".openTooltip").each(function () {
                        jQuery(this).removeClass("openTooltip")
                    });
                    c.addClass("openTooltip");
                    for (b = z = 0; b < m.length; b++) if (m[b].date == e) {
                        z = b;
                        break
                    }
                    l = c.offset().left - f.offset().left;
                    C = c.offset().top - f.offset().top;
                    d.append('<div class="dzstooltip arrow-left currTooltip" style="left:' + (l + 50) + "px; top:" + C + 'px;"></div>');
                    c = d.children(".dzstooltip").last();
                    c.html(m[z].content);
                    c.animate({
                        opacity: 1,
                        left: l + 30
                    }, {
                        queue: !1,
                        duration: settings_dzscalendar.animation_time / 1.5,
                        easing: settings_dzscalendar.animation_easing
                    })
                }
            });
            j = h.getMonth();
            g = h.getFullYear();
            "" != e.start_year && (g = parseInt(e.start_year, 10));
            "" != e.start_month && (j = parseInt(e.start_month, 10));
            x(g, j);
            return this
        })
    }
})(jQuery);