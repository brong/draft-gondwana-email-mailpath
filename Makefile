

build: draft-ietf-email-mailpath.txt draft-ietf-email-mailpath.html draft-ietf-email-mailpath.xml

%.xml: %.mdown
	mmark $< > $@

%.txt: %.xml
	xml2rfc --text $<

%.html: %.xml
	xml2rfc --html $<

clean:
	rm -f *.txt *.html *.xml
