[%%shared
	open Eliom_lib
	open Eliom_content
	open Html.D

	let areaWidth = 1000
	let areaHeight = 1000
	let gameCanvas = div ~a:[a_class ["canvas"]] []
]

[%%client
open Eliom_content
open Html.D
open Js_of_ocaml
open Js_of_ocaml_lwt
open Lwt_js_events

let init () =
	Random.self_init ();

	let dom = Html.To_dom.of_div gameCanvas in
	dom##.style##.width := Js.string (Printf.sprintf "%dpx" areaWidth);
	dom##.style##.height := Js.string (Printf.sprintf "%dpx" areaHeight);
	Html.Manip.replaceSelf gameCanvas gameCanvas;
]