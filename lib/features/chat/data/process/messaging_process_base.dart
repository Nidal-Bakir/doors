abstract class MessagingProcessBase<R, A> {
  R startOrAttachToRunningProcess(A message);

  Future<void> disposeAllProcesses();

  Future<void> disposeAllFinishedProcesses();
}
