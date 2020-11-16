%
% Keep only fields in the standard BibTeX styles
%

%
% article
%
keep.field {{author
             title
             journal
             year
             url}
  if $type = article}

%
% inproceedings
%
keep.field {{author
             title
             booktitle
             year
             url}
  if $type = inproceedings}

keep.field {{author
             title
             month
             year
             url}
  if $type = unpublished}

%
% misc
%
keep.field {{author
             title
             howpublished
             url
             year}
  if $type = misc}

%
% book
%
keep.field {{author
             editor
             title
             publisher
             year
             volume
             number
             series
             address
             edition
             month
             url}
  if $type = book}

%
% incollection
%
keep.field {{author
             title
             journal
             year
             url}
  if $type = incollection}

%
% techreport
%
keep.field {{author
  title
  institution
  year
  url}
if $type = techreport}


%
% PhdThesis
%
keep.field {{author
  title
  journal
  year
  url}
if $type = phdthesis}

%
% For all the rest
%
keep.field {{author
             title
             booktitle
             journal
             year
             howpublished
             url
}}
