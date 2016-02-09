module Data.HTTP.ResponseHeader where

import Prelude

data ResponseHeader
  = AcceptRanges
  | Age
  | Allow
  | CacheControl
  | Connection
  | ContentDisposition
  | ContentEncoding
  | ContentLanguage
  | ContentLength
  | ContentLocation
  | ContentRange
  | ContentType
  | Date
  | ETag
  | Expires
  | LastModified
  | Link
  | Location
  | Pragma
  | ProxyAuthenticate
  | RetryAfter
  | Server
  | SetCookie
  | StrictTransportSecurity
  | Trailer
  | TransferEncoding
  | Upgrade
  | Vary
  | Via
  | Warning
  | WWWAuthenticate

fromString s =
  case s of
    "Accept-Ranges" -> AcceptRanges
    "Age" -> Age
    "Allow" -> Allow
    "Cache-Control" -> CacheControl
    "Connection" -> Connection
    "Content-Disposition" -> ContentDisposition
    "Content-Encoding" -> ContentEncoding
    "Content-Language" -> ContentLanguage
    "Content-Length" -> ContentLength
    "Content-Location" -> ContentLocation
    "Content-Range" -> ContentRange
    "Content-Type" -> ContentType
    "Date" -> Date
    "ETag" -> ETag
    "Expires" -> Expires
    "Last-Modified" -> LastModified
    "Link" -> Link
    "Location" -> Location
    "Pragma" -> Pragma
    "Proxy-Authenticate" -> ProxyAuthenticate
    "Retry-After" -> RetryAfter
    "Server" -> Server
    "Set-Cookie" -> SetCookie
    "Strict-Transport-Security" -> StrictTransportSecurity
    "Trailer" -> Trailer
    "Transfer-Encoding" -> TransferEncoding
    "Upgrade" -> Upgrade
    "Vary" -> Vary
    "Via" -> Via
    "Warning" -> Warning
    "WWW-Authenticate" -> WWWAuthenticate
