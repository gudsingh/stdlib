# @summary Validate an ObjectStore
type Stdlib::ObjectStore = Variant[
  Stdlib::ObjectStore::GSUri,
  Stdlib::ObjectStore::S3Uri,
]
