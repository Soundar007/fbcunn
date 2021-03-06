// Copyright 2004-present Facebook. All Rights Reserved.

#include "cuda/DeviceTensor.cuh"

namespace facebook { namespace deeplearning { namespace torch {

void
runTemporalKMaxPoolingUpdateOutput(
  const cuda::DeviceTensor<float, 3>& input,
  const cuda::DeviceTensor<float, 3>& indices,
  cuda::DeviceTensor<float, 3>& output,
  int k);

void
runTemporalKMaxPoolingUpdateGradInput(
  const cuda::DeviceTensor<float, 3>& gradOutput,
  const cuda::DeviceTensor<float, 3>& indices,
  cuda::DeviceTensor<float, 3>& gradInput,
  int k);

} } }
