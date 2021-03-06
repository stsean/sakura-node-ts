// Copyright 2017 Frank Lin (lin.xiaoe.f@gmail.com). All rights reserved.
// Use of this source code is governed a license that can be found in the LICENSE file.

export enum QueryType {
  SELECT,
  INSERT,
  UPDATE,
  DELETE,
  REPLACE
}

export abstract class Query {

  /**
   * Override this to announce the query type.
   */
  abstract type(): QueryType;
}
