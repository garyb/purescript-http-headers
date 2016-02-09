module Data.HTTP.RequestHeader where

import Prelude

data RequestHeader
  = Accept
  | AcceptCharset
  | AcceptEncoding
  | AcceptLanguage
  | Authorization
  | CacheControl
  | Connection
  | Expect
  | Form
  | Forwarded
  | Host
  | IfMatch
  | IfModifiedSince
  | IfNoneMatch
  | IfRange
  | IfUnmodifiedSince
  | MaxForwards
  | Pragma
  | Range
  | TE
  | Via
  | Warning

fromString s =
  case s of
    "Accept" -> Accept
    "Accept-Charset" -> AcceptCharset
    "Accept-Encoding" -> AcceptEncoding
    "Accept-Language" -> AcceptLanguage
    "Authorization" -> Authorization
    "Cache-Control" -> CacheControl
    "Connection" -> Connection
    "Expect" -> Expect
    "Form" -> Form
    "Forwarded" -> Forwarded
    "Host" -> Host
    "If-Match" -> IfMatch
    "If-Modified-Since" -> IfModifiedSince
    "If-None-Match" -> IfNoneMatch
    "If-Range" -> IfRange
    "If-Unmodified-Since" -> IfUnmodifiedSince
    "Max-Forwards" -> MaxForwards
    "Pragma" -> Pragma
    "Range" -> Range
    "TE" -> TE
    "Via" -> Via
    "Warning" -> Warning
