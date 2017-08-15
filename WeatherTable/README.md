#Table View Exam

UITableViewDataSource 

*require method

	1.tableView(UITableView, numberOfRowsInSection)
		-그려질 TableView Row 수 return

	2.tableView(UITableView, cellForRowAt)
		-Cell return
		-tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) 의 identifier와
		 story board 의 table view cell identifier = Cell 을 동일하게 해주어야 함.

데이터 자료구조 : 배열안에 Dictionary를 넣은 형태로 사용.


#XMLPASER 추가

-Event-driven : 사스 파서(위에서부터 파싱, 일관된 속도)
-Parse() : parsing start function

* XMLParserDelegate 함수 3개

-func parser(XMLParser, didStartElement: String, namespaceURI: String?, qualifiedName: String?, attributes: [String : String] = [:])

	Sent by a parser object to its delegate when it encounters a start tag for a given element.

	Element 의 start tag 만났을때 parser로 부터 delegate 로 호출


-func parser(XMLParser, didEndElement: String, namespaceURI: String?, qualifiedName: String?)
	
	Sent by a parser object to its delegate when it encounters an end tag for a specific element.

	element의 end tag 만났을때 parser로 부터 delegate 로 호출

-func parser(XMLParser, foundCharacters: String)
	
	Sent by a parser object to provide its delegate with a string representing all or part of the characters of the current element.

	현재 element의 character의 일부를 parser에 의해  제공받음.